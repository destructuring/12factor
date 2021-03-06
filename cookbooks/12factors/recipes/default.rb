include_recipe "unicorn"

if node[:app_env] == "development"
  directory "#{node[:release_dir]}/log" do
    mode 0750
  end

  execute "test log" do
    command "touch #{node[:release_dir]}/log/test.log"
    creates "#{node[:release_dir]}/log/test.log"
  end
else
  link "#{node[:release_dir]}/log" do
    to "#{node[:project_dir]}/#{node[:log_dir]}"
  end
end

if node[:env_pod] == "localdomain"
  link "#{node[:release_dir]}/current" do
    to "."
  end
end
