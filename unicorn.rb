# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/home/ubuntu/EventsOn"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/home/ubuntu/EventsOn/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/logs/unicorn.log"
# stdout_path "/path/to/logs/unicorn.log"
stderr_path "/home/ubuntu/EventsOn/logs/unicorn.log"
stdout_path "/home/ubuntu/EventsOn/unicorn.log"

# Unicorn socket
# listen "/tmp/unicorn.[app name].sock"
listen "/tmp/unicorn.eventson.sock"

# Number of processes
# worker_processes 4
worker_processes 4

# Time-out
timeout 30
