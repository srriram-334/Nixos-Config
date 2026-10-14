{pkgs,...}:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."zangetsu" = {
    isNormalUser = true;
    description = "zangetsu";
    extraGroups = [ "networkmanager" "wheel" "podman" ];
    packages = with pkgs; [
    ];
  };



}
