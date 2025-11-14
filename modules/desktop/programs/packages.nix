{ config, pkgs, ... }:

{
  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
    whois
    lshw
    smartmontools
    parted
    bottles
    heroic
    dmidecode
    nix-ld
    ragenix
    ssh-to-age
    tree
    icu

    # zip_tool
    file-roller
    # xarchiver
    p7zip
    unrar
    unzip

    ffmpeg-full
    openh264
    gst_all_1.gst-libav
    gst_all_1.gst-plugins-bad
    gst_all_1.gst-plugins-ugly

    brightnessctl
    power-profiles-daemon

    xdg-desktop-portal
    xdg-desktop-portal-wlr
  ];

  programs.appimage = {
    enable = true;
    binfmt = true;
    package = pkgs.appimage-run.override {
      extraPkgs = pkgs: [
        pkgs.python312
        pkgs.libGL
        pkgs.gtk3
        pkgs.libepoxy
      ];
    };
  };

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  programs.zsh.enable = true;
  environment.shells = with pkgs; [ zsh ];
}
