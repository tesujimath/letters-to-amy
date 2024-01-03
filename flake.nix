{
  description = "Flake for building letters-to-amy";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-unstable;
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, flake-utils, nixpkgs }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs {
            inherit system;
          };
      in
        with pkgs;
        {
          devShells.default = mkShell {
            nativeBuildInputs = [
              hugo
              just
              nushell
              static-web-server
            ];
          };
        }
    );
}
