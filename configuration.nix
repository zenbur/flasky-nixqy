{ config, pkgs, ... }:

{
  # For the ova image
  imports = [ <nixpkgs/nixos/modules/installer/virtualbox-demo.nix> ];
  networking.firewall.allowedTCPPorts = [ 80 ];
}
