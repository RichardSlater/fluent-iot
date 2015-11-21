# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.synced_folder "./src/main/nodejs/htdocs/", "/vagrant_data"

  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.customize ["modifyvm", :id, "--audio", "dsound", "--audiocontroller", "ac97"]
  end

  config.vm.provision "chef_solo" do |chef|
    chef.log_level = :warn

    chef.add_recipe "apt"
    chef.add_recipe "apache2"
    chef.add_recipe "nodejs"
    chef.add_recipe "lirc"
    chef.add_recipe "colorprompt"
    chef.add_recipe "vagrant-data"
    chef.add_recipe "vagrant-audio"
  end

  config.vm.provision :reload
end