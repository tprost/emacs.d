# shell.nix

let
  pkgs = import <nixpkgs> {};

in pkgs.mkShell {
  buildInputs = [
    
   # pkgs.emacsPackages.elisp-autofmt
  ];

 
  

}
