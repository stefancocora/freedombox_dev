#
Vagrant::Config.run do |config|
  config.vm.box = "freedombox_x64"
  config.vm.customize [ "modifyvm", :id, "--memory", "512", "--cpus", "1"]

  config.ssh.timeout    = 300
  config.ssh.max_tries  = 50
  # config.vm.provision :puppet do |puppet|
  #   puppet.manifests_path = "manifests"
  #   puppet.manifest_file = "drupal7.pp"
  # end

# config.vm.forward_port "ssh2", 22, 52200
# config.vm.forward_port 80, 58000
# config.vm.forward_port 3306, 53306
config.vm.network :hostonly, "75.75.75.75"
config.vm.provision :shell, :path => "bin/vagrant-provision.sh"
#config.vm.boot_mode = :gui

# config.vm.share_folder "v-aptcache", "/var/cache", "var/cache"

end
