{ pkgs, ... }:
{

  stylix.enable = true;

  # Turn off stryling for specifics "apps"
  stylix.targets = {
    #firefox.enable = false;
    #vscode.enable = false;
  };



  #
  # General Color
  #

  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/brewer.yaml";
  # Find themes with:
  # $ nix build nixpkgs#base16-schemes
  # $ cd result
  # $ nix run nixpkgs#eza -- --tree


  stylix.opacity = {
    applications = 1.0;
    terminal = 0.8;
    desktop = 1.0;
    popups = 1.0;
  };


  stylix.polarity = "dark"; # dark or light

  stylix.image = ../media/backgrounds/adams_birth_DOS.jpg;


  #
  # Cursor
  #

  stylix.cursor.package = pkgs.bibata-cursors;
  stylix.cursor.name = "Bibata-Modern-Ice";
  stylix.cursor.size = 24; # 24 normal, 32 large
  # Find curors with:
  # $ nix build nixpkgs#bibata-cursors
  # $ cd result
  # $ nix run nixpkgs#eza -- --tree --level 3

  #
  # Icons
  #

  stylix.iconTheme = {
    enable = true;
    package = pkgs.papirus-icon-theme;
    dark = "Papirus-Dark";
    light = "Papirus-Light";
  };

  #
  # Fonts
  #



  stylix.fonts = {

    # Sizes
    sizes = {
      applications = 12;
      terminal = 15;
      desktop = 10;
      popups = 10;
    };

    # Types

    monospace = {
      package = pkgs.nerd-fonts.jetbrains-mono;
      name = "JetBrainsMono Nerd Font Mono";
    };

    sansSerif = {
      package = pkgs.inter;
      name = "Inter";
    };

    serif = {
      package = pkgs.libertine;
      name = "Linux Libertine G";
    };

    emoji = {
      package = pkgs.twemoji-color-font;
      name = "Twitter Color Emoji";
    };
  };


}
