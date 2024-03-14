{ pkgs ? import <nixpkgs> { }, ...}:

with pkgs; let
  pythonpkgs = python3.withPackages (ps: with ps; [
    notebook
    pandas
    # pypandoc
  ]);
in
pkgs.mkShell {
  nativeBuildInputs = [
  ];

  buildInputs = with pkgs; [
    pythonpkgs
  ];

  shellHook = ''
    # ...
  '';
}
