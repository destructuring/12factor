node[:app_user] = "buddhy"
node[:app_name] = "12factors"
node[:unicorn_port] = "4085"

# relative to project_dir
default[:app_dir] = "current"
default[:run_dir] = "log"
default[:log_dir] = "log"

# ruby
default[:ruby_loader] = "/usr/local/rvm/bin/rvm-exec"
default[:app_ruby] = "1.9.3"
