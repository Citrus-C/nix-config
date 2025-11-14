{ pkgs, ... }:

{
  systemd.user.services.cliphist = {
    Unit = {
      Description = "Wayland clipboard history daemon (cliphist)";
    };
    Service = {
      ExecStart = "${pkgs.wl-clipboard}/bin/wl-paste --watch ${pkgs.cliphist}/bin/cliphist store";
      Restart = "always";
    };
    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}