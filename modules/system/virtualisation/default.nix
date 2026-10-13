{...}:
{

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
    defualtNetwork.settings.dns_enabled = true;
  };
}
