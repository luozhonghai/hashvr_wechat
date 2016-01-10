root = "/www/web/hashvr_wechat/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.hashvr_wechat.sock"
listen 8080
worker_processes 2
timeout 30