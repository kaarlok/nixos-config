{ pkgs, inputs, ... }:

{
  # autolith keeps its own pinned nixpkgs on purpose: it asserts a specific SBCL
  # version, so `inputs.nixpkgs.follows` would break evaluation here.
  home.packages = [
    inputs.autolith.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
