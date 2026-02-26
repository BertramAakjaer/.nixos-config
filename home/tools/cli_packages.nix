{ config, pkgs, ... }:
{
  # User packages
  home.packages = with pkgs; [
    lf
    ripgrep
    wget
    curl

    nil
    neofetch

    nixpkgs-fmt
    vscode-fhs
  ];
}
