Project: metis (rebuilding, still dev)
----------------------------
    metis
        基于SSH RSA认证MySQL数据库存储的服务器登录管理客户端程序
        
        目前提供:
            gt          主机(linux)登录, 远程命令执行, 文件传输
                        ----------------------------------------
                        gt -u local-file ip-or-keyword:/remote-path 
                            上传本地文件 'local-file' 到 ip-or-keyword(根据关键词匹配主机) 保存到 remote-path 

            backup      文件, 数据库备份

            deploy      代码部署, 调用备份(backup, 可选)

            
        程序依赖以下程序或组件:
            mysql
            ssh
        

    
