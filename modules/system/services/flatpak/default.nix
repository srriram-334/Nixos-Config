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
  };

}
