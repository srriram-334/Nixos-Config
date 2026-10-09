{...}:
{
  services.sxhkd = {
    enable = true;
    keybindings = {
  "super + alt + q" = "bspc quit";
  "super + alt + r" = "bspc wm -r";
  "super + Return"  = "alacritty";
  "super + space"   = "rofi -show drun -show-icons";
    };

  };

}

