package 'lirc' do
  action :install
end

template '/etc/lirc/lircd.conf' do
  owner 'root'
  group 'root'
  mode 0644

  notifies :restart, 'service[lirc]'
end

template '/etc/lirc/hardware.conf' do
  owner 'root'
  group 'root'
  mode 0644

  notifies :restart, 'service[lirc]'
end

service 'lirc' do
  action :enable
  supports :start => true, :stop => true, :restart => true, :status => true
end