#!/usr/bin/env ruby

require 'alpha_omega/deploy'
load 'config/deploy'

# gitscm deploy
namespace :gitscm do
  task :restart do
    run "sudo service #{application} reload"
  end
end

# hooks into alpha_omega deploy
after "deploy:cook", "microwave:cook"
after "deploy:restart", "gitscm:restart"

# interesting hosts
Deploy self, __FILE__ do |admin, node| 
  { :deploy => { } }
end
