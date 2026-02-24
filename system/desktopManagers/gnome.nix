{ pkgs, ... }: {
  networking.networkmanager.enable = true; # Used by Gnome
  networking.wireless.enable = false; # These can fight over internet

  services.xserver.enable = true;

  services.libinput.enable = true; # Touchpad support (for the most enabled by default)
  services.xserver.xkb = { layout = "dk"; variant = "winkeys"; };

  services.xserver.autoRepeatDelay = 200;
  services.xserver.autoRepeatInterval = 35;

  services.displayManager.gdm.enable = true;
  services.displayManager.gdm.wayland = true;

  services.desktopManager.gnome.enable = true;

  services.gnome = {
    core-developer-tools.enable = false;
    games.enable = false;
  };

  services.xserver.desktopManager.xterm.enable = false;

  environment.gnome.excludePackages = with pkgs; [
    baobab # disk usage analyzer
    epiphany # web browser
    evince # document viewer
    geary # email client
    totem # video player
    yelp # help viewer
    gnome-tour # welcome tour
    gnome-user-docs # help documentation
    gnome-text-editor # default text editor
    gnome-calendar # calendar
    gnome-characters # character map
    gnome-clocks # clocks
    gnome-contacts # contacts
    gnome-font-viewer # font viewer
    gnome-logs # system logs
    gnome-maps # maps
    gnome-music # music player
    gnome-weather # weather app
    gnome-connections # remote desktop client
    loupe # image viewer (replaced eog)
    snapshot # camera app (replaced cheese)
    simple-scan # document scanner
    gnome-console # Console
    system-config-printer # Manage Printing
    rhythmbox # Audio player (older GNOME default)
    gnome-music # Audio player (newer GNOME default)
    totem # Video player
    evince # Document viewer
  ];

  # Add back the few specific tools you actually want
  environment.systemPackages = with pkgs; [
    nautilus
    gnome-calculator
    gnome-system-monitor
    gnome-terminal
  ];
}
