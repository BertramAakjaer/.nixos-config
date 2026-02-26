{ config, pkgs, ... }:
{
  programs =
    {
      git = {
        enable = true;
        lfs.enable = true;

        settings = {
          user = {
            name = "Bertram Aakjær";
            email = "89650492+BertramAakjaer@users.noreply.github.com";
          };
          init.defaultBranch = "main";
        };
      };
    };
}
