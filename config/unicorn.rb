root = "/home/vamika/apps/mobiletrap/current"
working_directory root
pid "#{root}/tmp/pids/unicorn_mobiletrap.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.mobiletrap.sock"
worker_processes 2
timeout 30
