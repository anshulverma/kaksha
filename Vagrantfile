# -*- mode: ruby -*-

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "mukhya" do |v|
    v.vm.provider "docker" do |d|
      d.image   = "phusion/baseimage"
      d.cmd     = ["/sbin/my-init", "--enable-insecure-key"]
      d.has_ssh = true
    end

    v.ssh.username = "anshul"
    v.ssh.private_key_path = "./keys/mukhya.key"

    v.vm.provision "shell", inline: "echo Hello"

    v.vm.synced_folder "./bashrc", "/vagrant"
  end
end
