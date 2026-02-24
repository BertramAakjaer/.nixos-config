{ config, pkgs, ... }:
{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true; # Dette sørger for, at Ghostty og Zsh taler sammen

    settings = {
      # Font
      font-family = "JetBrainsMono Nerd Font";
      font-size = 12;

      background-opacity = 0.85;

      window-decoration = true;
      window-padding-x = 10;
      window-padding-y = 10;

      cursor-style = "bar";
      cursor-style-blink = true;

      command = "${pkgs.zsh}/bin/zsh";
    };
  };
}
