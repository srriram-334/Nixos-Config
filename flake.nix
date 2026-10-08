{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = inputs@{ self, nixpkgs,home-manger, ... }: {
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
        ];
    };
  };
}

