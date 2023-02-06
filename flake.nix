{
  description = "Flake for building letters-to-amy";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, flake-utils, nixpkgs }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs {
            inherit system;
            config = { allowUnfree = true; };
          };
      in
        with pkgs;
        {
          devShells.default = mkShell {
            nativeBuildInputs = [
              hugo
              just
            ];
          };
        }
    );
}
