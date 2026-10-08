{ config, pkgs, ... }:

{
  home.username = "zangetsu";
  home.homeDirectory = "/home/zangetsu";

  home.stateVersion = "26.05"; # Please read the comment before changing.

  home.sessionVariables = {
     EDITOR = "vim";
  };

  programs.home-manager.enable = true;
}
