{ pkgs, ... }:

{
  services.atftpd = {
    enable = true;
    root = "/srv/tftp";
  };

   networking.firewall.allowedUDPPorts = [ 69 ];

  environment.systemPackages = with pkgs; [
    atftp   # 或者 tftp-hpa
  ];
}