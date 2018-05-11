# flasky-nixqy
A simple flask app script that says my name.

# How to build in environment
```
nix-env -iA nixos.git  
git-clone https://github.com/zenbur/flasky-nixqy.git  
cd flasy-nixqy/  
nix-env -if default.nix
```

# How to run
```
 app.py
```
# Nota bene
 Don't forget to add these rules to your `/etc/nixos/configuration.nix` to be able to access the flask web app from an external host

```
networking.firewall.allowedTCPPorts = [ 80 ];
```
For it to be effective do
```
nixos-rebuild switch
```
