{ pkgs, ... }:
{

  stylix.enable = true;

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
  # Find themes with:
  # $ nix build nixpkgs#base16-schemes
  # $ cd result
  # $ nix run nixpkgs#eza -- --tree


  stylix.polarity = "dark"; # dark or light

  stylix.image = ../media/backgrounds/adams_birth_DOS.jpg;
}
