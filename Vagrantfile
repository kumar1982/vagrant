Vagrant.configure("2") do |o|
  o.vm.box = "centos7"
  o.vm.box_url = "https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box"
  o.vm.synced_folder "./apps","/var/www/", create:true
  o.vm.synced_folder "./nginx","/usr/local/nginx", create:true
  o.vm.network :private_network, ip: "192.168.40.166"
  o.vm.provision :shell, :path => "install.sh"
end