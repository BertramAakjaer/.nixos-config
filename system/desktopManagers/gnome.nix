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

  # Fjerner bloat fra Gnome
  services.gnome = {
    core-apps.enable = false;
    core-developer-tools.enable = false;
    games.enable = false;
  };


  environment.systemPackages = with pkgs; [
    gnome-calculator
    gnome-system-monitor
  ];

  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
    gnome-user-docs
    #gnome-terminal
    #nautilus
  ];

}
