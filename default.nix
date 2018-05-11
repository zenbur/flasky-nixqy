{pkgs ? import <nixpkgs> {} }:
    with pkgs.python3Packages;
     buildPythonApplication rec {
      pname     = "Ruben-name-flask";
      version   = "1.0.0";
      src = pkgs.fetchFromGitHub {
        owner = "zenbur";
        repo = "flasky-nixqy";
        rev = "e2cfea86c64cd011a1875089e89bf945c06f733b";
        sha256 = "0sj1kr001dvia3vxx2lb79x4hz2lqxcjlvf8daqd0sw8n0sncgvz";
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
