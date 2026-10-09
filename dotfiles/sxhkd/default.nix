{config,...}:
{
  home.file.".config/sxhkd/sxhkdrc" = {
    source =  config.lib.file.mkOutOfStoreSymlink /home/zangetsu/nixos-config/dotfiles/sxhkd/sxhkdrc;
  };


}
