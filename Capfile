#!/usr/bin/env ruby

require 'alpha_omega/deploy'
load 'config/deploy'

# gitscm deploy
namespace :gitscm do
  task :restart do
    if dna["app_env"] == "development"
      service_dir=deploy_release
      service_loader="libexec/server"
    else
      service_dir="."
      service_loader="sudo service"
    end

    run "cd #{service_dir} && #{service_loader} zendesk_geminabox reload"
  end
end

# hooks into alpha_omega deploy
after "deploy:cook", "microwave:cook"
after "deploy:restart", "gitscm:restart"

# interesting hosts
Deploy self, __FILE__ do |admin, node| 
  { :deploy => { } }
end
