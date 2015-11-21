directory '/var/www/html' do
  action :delete
  recursive true
  only_if 'test -d /var/www/html'
end

link '/var/www/html' do
  to '/vagrant_data'
  action :create
  link_type :symbolic
end