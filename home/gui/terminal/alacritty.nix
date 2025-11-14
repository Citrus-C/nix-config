{
  pkgs,
  ...
}:

{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        opacity = 0.70;
        dynamic_title = true;
        decorations = "None"; # Show neither borders nor title bar
      };
      scrolling = {
        history = 10000;
      };
      terminal = {
        osc52 = "CopyPaste";
      };
    };
  };
}