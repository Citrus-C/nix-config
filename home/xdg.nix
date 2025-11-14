{ config, pkgs, ... }:

let
  # 定义 dotfiles 根目录变量
  dotfiles = "${config.home.homeDirectory}/nix-config/dotfiles";
in
{
  xdg.configFile = {
    "niri".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/niri";
    "waybar".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/waybar";
    "nvim".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/nvim";
    "helix".source = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/helix";
    
    # 其他应用同理...
    # "kitty".source  = config.lib.file.mkOutOfStoreSymlink "${dotfiles}/kitty";
  };
}
