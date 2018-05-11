{pkgs ? import <nixpkgs> {} }:
    with pkgs.python3Packages;
     buildPythonApplication rec {
      pname     = "Ruben-name-flask";
      version   = "1.0.0";
      src = pkgs.fetchFromGitHub {
        owner = "zenbur";
        repo = "flasky-nixqy";
        rev = "df2ca7cd5fb9f0e69336775bc15a7847e94ee9a2";
        sha256 = "04lmdrvdf8cqixx2ny603mwjqsihz1p38zrgp83k31r8iij4829r";
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
