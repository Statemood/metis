Project: metis (rebuilding, still dev)
----------------------------
    gt 
        基于SSH RSA认证MySQL数据库存储的服务器登录管理客户端程序

        程序依赖以下程序或组件:
            mysql
            python
            ssh
        
        metis/bin/gt

	    Files:
		    metis/bin/including             -- 用于source功能及实现临时文件管理
		    metis/cfg/metis.cfg.ge          -- 通用配置文件
		    metis/fun/metis.fun.ge          -- 通用函数文件
		    metis/fun/metis.fun.gt          -- gt 函数文件
		    metis/fun/metis.fun.check       -- Check 函数文件
		
	    特别说明:
		    including 需要指定路径或加入系统PATH中
		    函数include
		        metis默认放置在/usr/local/下, 如改用其他位置则需修改including第二行METIS_HOME_=YOUR_PATH
		        include 调用文件方式:
		            include metis.cfg.ge    ----include截取以点号分隔的metis和cfg为目录并组合,
		                                        得到$METIS_HOME_/metis/cfg/metis.cfg.ge 
		        
		    函数ftmp
		        本函数调用系统命令mktemp创建临时文件, 文件目录$APPSTEMP, 文件名长度20字符
		        例:
		            创建  ftmp create tmp1 tmp2 tmp3 tmpN
		            使用  $tmp1 $tmp2 ...
		            删除  ftmp delete
		
		    
        使用目录:
		    /dev/shm/metis/temp or /tmp/metis/temp      此目录调用metis.cfg.ge时自动创建
		    /data/.temp/                                此目录调用gt -t       时自动创建
		

        数据库信息:
            修改 metis.cfg.ge 相关配置:
                DB_User='db_username'
                DB_Pswd='db_password'
                DB_Host='db_hostorip'
                DB_Name='metis'
                DB_TLog='logs.application'
                DB_TSrv='metis.server'
                DB_Tool='/usr/local/bin/mysql'
                
            配置数据库:
                创建:
                    create database metis;
                    create database logs;
                    
                导入:
                    use metis;
                    source support-files/database_metis.sql;
                    
                    use logs;
                    source support-files/database_logs.sql;
                
                授权:
                    grant select on metis.server     to 'DB_USER'@'IP' identified by 'DB_PASSWORD' with grant option;
                    grant insert on logs.application to 'DB_USER'@'IP' identified by 'DB_PASSWORD' with grant option;
                    
                    目前仅需要此两种权限
                    
        权限设置:
            需要对metis.server     的select权限
            需要对logs.application 的insert权限
            其他暂时不需要
            
        安装:
            默认应安装到/usr/local
            -----------------------
            chown -R root:root /usr/local/metis 
        
            cfg     目录0755, 文件0644;
            bin     目录0755, 文件0755;
            fun     目录0755, 文件0644;
            sbin    目录0755, 文件0755;
            python  目录0755, 文件0755;
        
            echo 'export PATH=$PATH:/usr/local/metis/bin' >> /etc/profile
            
	
	    参数及帮助:
            -i,--info       IP
                            显示指定IP的信息, 如CPU,内存,磁盘,端口,可登录用户,系统信息等
                            需root权限
                            示例:	gt -i 10.20.30.40
            
            -U,--user       Username
                            指定一个用户名, 默认为当前用户
                            仅root可以指定其他用户名
                          
            -o,--option     
                            指定额外的选项
                            --include-hidden
                            
            -s,--specified  Keyword
            	            指定一台服务器
                            示例:	gt -s server1
			                        为其他操作指定服务器为 server1
			                        server1可以是IP或主机名,只要能在数据库中成功匹配到一台即可(大于1台则报错退出)
			                        
            -c,--cmd        Command
                            在-s指定的主机上执行命令
                            执行的命令带有参数时需把命令用双引号括起来
                            示例:	gt -s server1 -c "uname -a"
                            命令需经过检查:
                                详细列表请看metis.cfg.ge:cmd_warn,cmd_abrt,cmd_cfrm
                                如下命令因为持续的动态输出或出于安全原因而无法通过:
                                    top,watch,iftop,iptables,parted等等
                                
                                如下的命令出于安全原因而拒绝执行:
                                    输入错误的rm操作,例如 rm -rf /tmp/t1 因手误变成 rm -rf / tmp/t1 
                                    reboot,poweroff,shutdown,init 等等
                                
                                如下的命令需要确认才能执行:
                                    rm,cp,restart等
                                    
            -u,--upload     
                            上传本地文件到指定服务器
	                        示例:	gt -u /data/backup.tgz server1:/data/
			                        上传本地文件 /data/backup.tgz 到 server1 服务器 /data/目录下

            -d,--download
                    	    从服务器下载文件
	                        示例:	gt -d server1:/data/acc.log /root/
			                        从 server1 下载 /data/acc.log 到 本地 /root/ 目录下
            -t,--transfer
                            文件转发
                            在A主机上下载B主机文件再上传到C主机 (可能会修改为scp user1@ip1:file user2@ip2:path,待测)
                            示例:	gt -t server1:/file/name server2:/path/name
                            
            -l,--list       Keyword(可选)
                            查询/显示/登录/命令 
                            
	                        示例:	gt -l server
			                        列出全部匹配server的列表,支持模糊查询,不区分大小写,如结果只有1个则自动登录
			                        在列出的结果中:
			                            输入左侧对应的ID并回车则立即登录;
			                            输入c进入命令模式,可对列出的主机发送命令(命令检查参看-c),等待10秒无输入则退出
			                            输入其他字符则立即退出
			                            
	                        备注:	-l 后未给参数则列出全部列表内容
	                                显示可登录的主机,可使用-o --include-hidden来显示全部(需root权限,无权访问主机红色输出)
	
            -h,--help
                    	    显示帮助及版本信息
                            未添加
<<<<<<< HEAD
=======

            Command mode:
                            对列出的服务器执行内置命令<in-dev>
                            
                                stat        报告主机状态
                                report      详细主机信息
                                online      检查在线主机
                                backup      备份主机文件
                                client      
                                user        报告主机用户状态
                                log         
                                    error   显示错误日志
                                    login   显示登陆日志
                                    system  显示系统日志
                                    tomcat  显示Tomcat日志
                                    nginx   
                                    apache
                                    mysql
                                    oracle
                                    pgsql
                                serv        报告服务状态,不调用service,普通用户可查看(未定)
                                
                                

        client/histodb
        --------------------
            用于提交用户操作纪录(history)到数据库

                问题：
                    纪录的用户输入字符需先转码再提交, 否则将造成注入漏洞

        sbin/check   <in-dev>
        --------------------
            用于检查相关服务状态
                check login         检查所有主机已登录用户并与数据库中纪录的登录对比, 无记录的立即中断
                check user          检查所有主机用户,如用户不存在于数据库或shell与数据库中不一致则报告
                check sys-version   检查系统版本信息
                check sys-kernel    检查内核相关
                check sys-time      检查时间信息,如当前时区/时间/启动时间
                check file          检查指定文件
                check dir           检查指定目录
                
                
        sbin/deploy
        --------------------
            文件分发
>>>>>>> 259360c6ec44fd00014c40b1f3b04433a13a9137
