{...}:
{
    # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = false;
  services.desktopManager.plasma6.enable =  false;
  services.xserver.displayManager.lightdm.enable = true;

  services.xserver.windowManager.bspwm = {
    enable = true;
    configFile = null;
    sxhkd.configFile = null;
  };

}
