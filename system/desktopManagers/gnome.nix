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
    core-apps.enable = false;
    games.enable = false;
  };


  environment.gnome.excludePackages = with pkgs; [
    gnome-photos
    gnome-tour
    gnome-connections
    gnome-console
    gnome-text-editor
    gnome-characters
    gnome-contacts
    gnome-initial-setup

    cheese # webcam
    epiphany # browser
    geary # email
    evince # document viewer
    totem # video player
    yelp # help

    tali
    iagno
    hitori
    atomix
  ];

  services.xserver.desktopManager.xterm.enable = false;


  programs.dconf.enable = true;

  environment.systemPackages = with pkgs; [
    gnome-tweaks
    gnome-extensions-cli # Useful for debugging
    gnome-shell-extensions

    nautilus # file manager
  ];
}
