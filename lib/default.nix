{ lib, ... }: {

# ██╗     ██╗██████╗ 
# ██║     ██║██╔══██╗
# ██║     ██║██████╔╝
# ██║     ██║██╔══██╗
# ███████╗██║██████╔╝
# ╚══════╝╚═╝╚═════╝ 

  # Use path relative to the root of the project.
  relativeToRoot = lib.path.append ../.;

  # Function that returns all directories and files .nix excluding default.nix.
  scanPaths = path:
    builtins.map
    (f: (path + "/${f}"))
    (builtins.attrNames
      (lib.attrsets.filterAttrs
        (
          path: _type:
            (_type == "directory") # Include directories.
            || (
              (path != "default.nix") # Ignore default.nix
              && (lib.strings.hasSuffix ".nix" path) # Include .nix files
            )
        )
        (builtins.readDir path)));

}
