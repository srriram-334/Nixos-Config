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
  };
}

