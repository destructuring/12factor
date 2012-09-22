#!/usr/bin/env ruby

require 'alpha_omega/deploy'
load 'config/deploy'

# twelve_factors deploy
namespace :twelve_factors do
  task :restart do
    service_dir=deploy_release
    service_loader="libexec/server"
    run "cd #{service_dir} && #{service_loader} #{application} reload"
  end
end

# hooks into alpha_omega deploy
after "deploy:cook", "microwave:cook"
after "deploy:restart", "twelve_factors:restart"

# interesting hosts
Deploy self, __FILE__ do |admin, node| 
  { :deploy => { } }
end
