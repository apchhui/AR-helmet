with import <nixpkgs> {};

mkShell {
  packages = [
    gcc tinycc
    freecad
  ];

  shellHook = ''
    echo "🚀 nix-shell активен: язык — C++"
    code .
    freecad &> /dev/null &
  '';
}
