Vagrant.configure("2") do |config|
  config.vm.box = "codingbrain/bookiemarker"

  config.vm.network :forwarded_port, guest: 7220, host: 7220 # CodingBrain app
  config.vm.network :forwarded_port, guest: 7230, host: 7230 # BookieMarker frontend
  config.vm.network :forwarded_port, guest: 7231, host: 7231 # BookieMarker backend
  config.vm.network :forwarded_port, guest: 7232, host: 7232 # Postgres
  config.vm.network :forwarded_port, guest: 7234, host: 7234 # RabbitMQ
  config.vm.network :forwarded_port, guest: 7235, host: 7235 # RabbitMQ management server

  if Vagrant::Util::Platform.windows? then
    config.vm.provision "shell",
      inline: "git clone -b final https://github.com/thecodingbrain/bookiemarker-frontend.git /vagrant/frontend"
    config.vm.provision "shell",
      inline: "git clone -b final https://github.com/thecodingbrain/bookiemarker-backend.git /vagrant/backend"
    config.vm.provision "shell",
      inline: "git clone -b final https://github.com/thecodingbrain/bookiemarker-worker.git /vagrant/worker"
    config.vm.provision "shell",
      inline: "cp -f /vagrant/settings.py /home/codingbrain/config"
    config.vm.provision "shell",
      inline: "sudo service codingbrain restart"
  else
    config.vm.provision "shell",
      inline: "/bin/sh /vagrant/provision.sh"
  end
      
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
  end
  
  config.vm.post_up_message = "Your course is ready! Open http://localhost:7220 in your browser to get started."
end
