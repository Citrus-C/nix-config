{ pkgs, ... }:

{
  imports = [
    ../../modules/server/default.nix
  ];

  system.stateVersion = "25.05";
}