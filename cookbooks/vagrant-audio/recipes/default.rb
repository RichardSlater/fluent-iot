group 'audio' do
  action :modify
  members 'vagrant'
  append true
end

package 'libasound2' do
  action :install
end

package 'libasound2-doc' do
  action :install
end

package 'alsa-base' do
  action :install
end

package 'alsa-utils' do
  action :install
end

package 'alsa-oss' do
  action :install
end

execute 'init-alsa' do
  command '/usr/sbin/alsactl init'
  action :nothing
end