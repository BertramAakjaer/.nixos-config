{ pkgs, ... }:
{
  # Dette virker kun, hvis modulet eksisterer i din konfiguration
  services.gnome.gnome-keyring.enable = true;
  # For selve Nemo i Home Manager er det ofte:
  programs.nemo.enable = true;
}
