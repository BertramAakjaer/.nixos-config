{ config, pkgs, ... }:
{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true; # Dette sørger for, at Ghostty og Zsh taler sammen

    # Valgfrit: Her kan du styre dine indstillinger direkte
    #settings = {
    #  theme = "dark-pastel";
    #  font-size = 12;
    #  command = "${pkgs.zsh}/bin/zsh"; # Sikrer at Ghostty altid starter i Zsh
    #};
  };
}
