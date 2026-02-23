# A Quick guide + Overview of my NixOS Config

## Rebuilding and updating

```zsh
git add *

sudo nixos-rebuild switch --flake .#nixos-asus

git add flake.lock

git commit -m "Rebuild system"

git push
```

## Update flake.lock only

```zsh
nix flake update
```

# Adding a new host computer
1. Generate the hardware config for the new machine with the command:
```zsh
nixos-generate-config
```
2. Create a folder in hosts (`hosts/<new_host_name>/`)

3. Add the hardware config and add a new file called `default.nix`, where we sepcify the imports and system packages

4. Register the host in the `hosts/default.nix` and add a new config in the `nixosConfiguration`, like below:


```nix
<new_host_name> = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";
    specialArgs = { inherit inputs; };

    modules = [
        ./<new_host_name> # Your system settings
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
```
