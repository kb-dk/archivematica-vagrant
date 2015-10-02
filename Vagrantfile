# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.
	
	config.vm.hostname = "archivematica"

	config.vm.box = "ubuntu/trusty64"
  # Below needed for Vagrant versions < 1.6.x
  # config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

	config.vm.network :forwarded_port, :guest=>8000, :host=>8000 # Tomcat
  config.vm.network :forwarded_port, :guest=>80, :host=>8080 # Tomcat

  config.vm.provider "virtualbox" do |v|
  	v.memory = 2048
    v.cpus = 2
  end

  config.vm.provision :shell, :path=>"./install_scripts/bootstrap.sh"

end

