#
Vagrant::Config.run do |config|
  config.vm.box = "freedombox_x64-1.0"
  config.vm.box_url = "https://github.com/downloads/stefancocora/freedombox_dev/freedombox_x64-1.0.box"
  config.vm.customize [ "modifyvm", :id, "--memory", "512", "--cpus", "1"]

  config.ssh.timeout    = 300
  config.ssh.max_tries  = 50
  # config.vm.provision :puppet do |puppet|
  #   puppet.manifests_path = "manifests"
  #   puppet.manifest_file = "drupal7.pp"
  # end

config.vm.forward_port 8000, 8000
config.vm.network :hostonly, "75.75.75.75"
config.vm.provision :shell, :path => "bin/vagrant-provision.sh"
config.vm.share_folder("v-root", "/vagrant", ".")
#config.vm.boot_mode = :gui

# config.vm.share_folder "v-aptcache", "/var/cache", "var/cache"

end
