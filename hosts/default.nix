{ inputs, ... }:

{
  flake = {
    nixosConfigurations = {

      # ** Hardware configs **

      # Asus
      nixos-asus = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };

        modules = [
          ./nixos-asus # Your system settings
          inputs.home-manager.nixosModules.home-manager
          {
            home-manager = {

              useGlobalPkgs = true;
              useUserPackages = true;

              extraSpecialArgs = {
                pkgs-unstable = import inputs.nixpkgs-unstable {
                  system = "x86_64-linux";
                  config.allowUnfree = true;
                };
              };

              # User profiles
              users.bert = import ../home/profiles/bert;
              backupFileExtension = "backup";
            };
          }
        ];
      };

    };
  };
}
