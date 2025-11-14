{ config, pkgs, ... }:

{
  boot.kernelModules = [
    "kvm"
    "kvm-intel"
  ];

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = false;
    };
  };

  programs.virt-manager.enable = true;

  virtualisation.spiceUSBRedirection.enable = true;

  environment.systemPackages = with pkgs; [
    OVMF
    virtiofsd
  ];

  users.users."fall_dust".extraGroups = [ "libvirtd" ];
}
