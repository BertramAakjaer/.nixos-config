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
