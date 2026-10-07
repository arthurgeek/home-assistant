{
  description = "home-assistant config development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/master";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        # `nix develop`, or automatically through direnv (`.envrc`)
        devShells.default = pkgs.mkShell {
          buildInputs = [
            # Git hooks (.lefthook.toml), installed on shell entry, and what they run.
            pkgs.lefthook
            pkgs.yamlfmt
            pkgs.nixfmt
            pkgs.gitleaks
          ];

          shellHook = ''
            # Find the checkout the shell was entered from and keep its .git/hooks pointing at this shell's
            # lefthook (idempotent).
            _ha_root="$PWD"
            while [ "$_ha_root" != "/" ] && [ ! -f "$_ha_root/flake.nix" ]; do
              _ha_root="$(dirname "$_ha_root")"
            done
            if [ -f "$_ha_root/flake.nix" ]; then
              ( cd "$_ha_root" && lefthook install >/dev/null )
            fi
            unset _ha_root
          '';
        };
      }
    );
}
