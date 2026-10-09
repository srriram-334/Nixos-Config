{config,...}:
{
  home.file.".config/bspwm/bspwmrc" = {
    source =  config.lib.file.mkOutOfStoreSymlink /home/zangetsu/nixos-config/dotfiles/bspwm/bspwmrc;
  };


}
