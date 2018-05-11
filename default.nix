{pkgs ? import <nixpkgs> {} }:
    with pkgs.python3Packages;
     buildPythonApplication rec {
      pname     = "Ruben-name-flask";
      version   = "1.0.0";
      src = pkgs.fetchFromGitHub {
        owner = "zenbur";
        repo = "flasky-nixqy";
        rev = "bbee850cc44e4d4d4571f8ceb81120582e31cab1";
        sha256 = "1x0jl32j13bbxva0ah81v2b5qgywn0vmr6fxplr6byl5yq0zaqhp";
      };

      buildInputs = [
      flask
      ];

      propagatedBuildInputs = [
      flask
      ];

      meta = with pkgs.stdenv.lib; {
        homepage = "zenbur.wordpress.com";
        description = "Simple build that runs a simple flask web app if called with nix-shell";
        license = licenses.mit;
        maintainers = with maintainers; [ "RUBEN" ];
      };
    }
