servers=[
{
  :hostname => "server1",
  :ip => "192.168.100.10",
  :box => "hashicorp/precise64",
  :ram => 512,
  :cpu => 1,
  :provisions => ["bootstrap.sh","exercise1-fix.sh","exercise2-fix.sh","exercise3-fix.sh","exercise5-fix_server1.sh","exercise4-fix_server1.sh"]
},
{
  :hostname => "server2",
  :ip => "192.168.100.11",
  :box => "hashicorp/precise64",
  :ram => 512,
  :cpu => 1,
  :provisions => ["exercise5-fix_server2.sh","exercise4-fix_server2.sh"]
}
]

Vagrant.configure(2) do |config|
  servers.each do |machine|
    config.vm.define machine[:hostname] do |node|
        machine [:provisions].each do |script|
           node.vm.provision :shell, :path => script
        end
#      node.vm.provision :shell, :path => "bootstrap.sh"
#      node.vm.provision :shell, :path => "exercise1-fix.sh"
#      node.vm.provision :shell, :path => "exercise2-fix.sh"
#      node.vm.provision :shell, :path => "exercise3-fix.sh"
      node.vm.box = machine[:box]
      node.vm.hostname = machine[:hostname]
      node.vm.network "private_network", ip: machine[:ip]
      node.vm.provider "virtualbox" do |vb|
        vb.memory = machine[:ram]
        vb.cpus = machine[:cpu]
      end
    end
  end
end


