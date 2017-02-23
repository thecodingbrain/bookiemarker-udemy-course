Vagrant.configure("2") do |config|
  config.vm.box = "codingbrain/webscraper"

  config.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
  end
end
