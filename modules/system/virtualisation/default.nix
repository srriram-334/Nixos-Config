{pkgs,...}:
{

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
    defaultNetwork.settings.dns_enabled = true;
  };
  virtualisation.containers.registries.search = ["docker.io" "quay.io" "ghcr.io" "gcr.io"];
  
  environment.systemPackages = with pkgs; [ distrobox ];
}
