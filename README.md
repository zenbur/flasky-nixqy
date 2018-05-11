# flasky-nixqy
A nixos example to use a simple python flask script that says my name.

# Firewall rules
 Don't forget to add these rules to your `/etc/nixos/configuration.nix` to be able to access the flask web app from an external host

```
networking.firewall.allowedTCPPorts = [ 80 ];
```
An example `/etc/nixos/configuration.nix` configuration is as follows
```
{ config, pkgs, ... }:

{
  # For the virtualBox ova image
  imports = [ <nixpkgs/nixos/modules/installer/virtualbox-demo.nix> ];
  networking.firewall.allowedTCPPorts = [ 80 ];
}
```
For it to be effective run the following command on the terminal
```
nixos-rebuild switch
```
# How to build in environment
```
nix-env -iA nixos.git  
git clone https://github.com/zenbur/flasky-nixqy.git  
cd flasky-nixqy/  
nix-env -if default.nix
```

# How to run
On the terminal just run the following command
```
 app.py
```

# How to remove from the environment
Just run the following
```
nix-env -e Ruben-name-flask
```
