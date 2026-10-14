{pkgs,...}:
{
  xdg.portal = {
    enable = true;
    config = {
      common = {
        default = [
          "kde"
        ];
      };
    };    
    extraPortals =[pkgs.xdg-desktop-portal-gtk];
  }; 

  services.flatpak = {
    enable = true;
    packages = [
    "com.usebottles.bottles"
    "org.freedownloadmanager.Manager"
    "com.github.tchx84.Flatseal" 
    "org.freedesktop.Platform.VulkanLayer.MangoHud//25.08"
    ];
  };

}
