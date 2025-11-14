{
  config,
  pkgs,
  inputs,
  system,
  ...
}:

{
  home.packages = with pkgs; [
    fastfetch
    gh

    # browsers
    brave
    chromium
    firefox

    # chat Tools
    ayugram-desktop

    # download
    motrix
    qbittorrent-enhanced
    yt-dlp

    # email
    thunderbird

    # media
    obs-studio
    celluloid # video
    imv #image
    ffmpegthumbnailer # 视频缩略图
    poppler # PDF 缩略图
    libopenraw # RAW 照片缩略图
    libgsf # Office 文档缩略图

    # office
    libreoffice-fresh

    # tools
    android-tools
    localsend
    scrcpy
    qtscrcpy
    picocom
    netcat-openbsd
    inetutils
    
    # 剪贴板
    wl-clipboard
    cliphist
    copyq
    
    # gaming
    hmcl

    # Web3
    kubo # ipfs
  ];
}
