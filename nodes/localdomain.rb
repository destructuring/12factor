run_list [ '12factors' ]
platform "generic"
platform_version "0.0.1"

release_dir "#{ENV['PWD']}"
project_dir "#{ENV['PWD']}"
home_dir ENV['HOME']
app_env "development"
node_env "localdomain"
dpp_dir "."
ruby_loader "rvm-exec"
