{pkgs ? import <nixpkgs> {} }:
    with pkgs.python3Packages;
     buildPythonApplication rec {
      pname     = "Ruben-name-flask";
      version   = "1.0.0";
      src = pkgs.fetchFromGitHub {
        owner = "zenbur";
        repo = "flasky-nixqy";
        rev = "c42a1577495a20ab4f229851b7bb91f1717a8523";
        sha256 = "10xm2jc26zi0h1ldz2vkvw143c9k5g2s6k5qs9bba9nqvmavffvx";
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
