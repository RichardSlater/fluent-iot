template "/etc/profile.d/colorprompt.sh" do
  source "colorprompt.sh.erb"
  mode 0644
  owner "root"
  group "root"
end