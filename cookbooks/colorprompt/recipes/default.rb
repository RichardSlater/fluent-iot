template "/root/.bashrc" do
  source "bashrc.erb"
  owner "root"
  group "root"
  mode  "0644"
end

template "/home/vagrant/.bashrc" do
  source "bashrc.erb"
  owner "vagrant"
  group "vagrant"
  mode  "0644"
end
