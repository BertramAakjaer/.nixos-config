{ ... }: {
  services.xserver.enable = true;
  services.xserver.xkb = { layout = "dk"; variant = "winkeys"; };
  services.xserver.autoRepeatDelay = 200;
  services.xserver.autoRepeatInterval = 35;

  services.displayManager.gdm.enable = true;
  services.displayManager.gdm.wayland = true;
  services.desktopManager.gnome.enable = true;
  services.libinput.enable = true; # Touchpad support (for the most enabled by default)

  networking.networkmanager.enable = true; # Used by Gnome
  networking.wireless.enable = false; # These can fight over internet
}
