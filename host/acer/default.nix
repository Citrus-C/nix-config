{
  config,
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ../../modules/base
    ../../modules/desktop
    
    ./hardware-configuration.nix
  ];

  system.stateVersion = "25.05";
}
