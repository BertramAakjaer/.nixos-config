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

  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
    cheese # webcam tool
    gnome-music
    gedit # text editor
    epiphany # web browser
    geary # email reader
    gnome-characters
    tali # poker game
    iagno # go game
    hitori # sudoku game
    atomix # puzzle game
    yelp # Help view
    gnome-contacts
    gnome-initial-setup
  ]);


  programs.dconf.enable = true;

  environment.systemPackages = with pkgs; [
    gnome-tweaks
  ];
}
