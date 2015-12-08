VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.7.2"

# expose ports from guest to host for convenience
FORWARDED_PORT_RANGE = 9901..9910

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.define "main", primary: true do |node|
	
        node.vm.box = "bento/centos-7.1"
        node.vm.box_version = ">= 1.4.1.3"

        node.vm.network "private_network", ip: "192.168.56.20"
		#node.vm.network "forwarded_port", guest: 80, host: 9980
        #for i in FORWARDED_PORT_RANGE
        #    node.vm.network "forwarded_port", guest: i, host: i
        #end
		
        node.vm.provision "hosts" do |hosts|			
            hosts.add_host '192.168.56.20', ['main.dindin.com', 'main']
			hosts.add_host '192.168.56.21', ['node1.dindin.com', 'node1']
			hosts.add_host '192.168.56.22', ['node2.dindin.com', 'node2']
			hosts.add_host '192.168.56.23', ['node3.dindin.com', 'node3']
        end		
		
        node.vm.provider "virtualbox" do |vb|
            vb.customize ["modifyvm", :id, "--memory", "1024"]
        end
		node.vm.provision "shell", path: "provision/setup-env.sh"
    end
	
    config.vm.define "node1" do |node|

        node.vm.box = "bento/centos-7.1"		
        node.vm.box_version = ">= 1.4.1.3"
		
		node.vm.network "private_network", ip: "192.168.56.21"		
        node.vm.provision "hosts" do |hosts|			
            hosts.add_host '192.168.56.20', ['main.dindin.com', 'main']
			hosts.add_host '192.168.56.21', ['node1.dindin.com', 'node1']
			hosts.add_host '192.168.56.22', ['node2.dindin.com', 'node2']
			hosts.add_host '192.168.56.23', ['node3.dindin.com', 'node3']
        end	
		
        node.vm.provider "virtualbox" do |vb|
            vb.customize ["modifyvm", :id, "--memory", "1024"]
        end
		
        node.vm.provision "shell", path: "provision/setup-env.sh"
		# config.vm.provision "shell", inline: <<-SHELL
		#   sudo apt-get update
		#   sudo apt-get install -y apache2
		# SHELL
    end


    config.vm.define "node2" do |node|

        node.vm.box = "bento/centos-7.1"
        node.vm.box_version = ">= 1.4.1.3"

        node.vm.network "private_network", ip: "192.168.56.22"
        node.vm.provision "hosts" do |hosts|			
            hosts.add_host '192.168.56.20', ['main.dindin.com', 'main']
			hosts.add_host '192.168.56.21', ['node1.dindin.com', 'node1']
			hosts.add_host '192.168.56.22', ['node2.dindin.com', 'node2']
			hosts.add_host '192.168.56.23', ['node3.dindin.com', 'node3']
        end		
		
        node.vm.provider "virtualbox" do |vb|
            vb.customize ["modifyvm", :id, "--memory", "1024"]
        end
		node.vm.provision "shell", path: "provision/setup-env.sh"
    end


    config.vm.define "node3" do |node|
        node.vm.box = "bento/centos-7.1"
        node.vm.box_version = ">= 1.4.1.3"

        node.vm.network "private_network", ip: "192.168.56.23"
        node.vm.provision "hosts" do |hosts|			
            hosts.add_host '192.168.56.20', ['main.dindin.com', 'main']
			hosts.add_host '192.168.56.21', ['node1.dindin.com', 'node1']
			hosts.add_host '192.168.56.22', ['node2.dindin.com', 'node2']
			hosts.add_host '192.168.56.23', ['node3.dindin.com', 'node3']
        end	
		
        node.vm.provider "virtualbox" do |vb|
            vb.customize ["modifyvm", :id, "--memory", "1024"]
        end
		node.vm.provision "shell", path: "provision/setup-env.sh"
    end


end
