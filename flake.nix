{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
  };
  outputs = inputs@{ self, nixpkgs,home-manager,nix-flatpak, ... }: {
    nixosConfigurations.wandenreich = nixpkgs.lib.nixosSystem {
      modules = [ 
        ./hosts/wandenreich 
        ./modules/system
        ];
    };
    homeConfigurations.zangetsu = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      extraSpecialArgs = { inherit inputs; };
      modules = [
        ./modules/home
        ./dotfiles
        ];
    };
  };
}

