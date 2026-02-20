{ stdenv, typst, sass }:

stdenv.mkDerivation {
  pname = "index";
  version = "master";

  src = ./.;

  buildInputs = [ typst sass ];

  buildPhase = ''
    TYPST_FEATURES=html typst compile --format html index.typ
    sass css/*.scss --update
  '';

  installPhase = ''
    mkdir -p $out
    cp index.html $out
    cp css $out -r
    cp poster $out -r
    cp pub $out -r
    cp talks $out -r
    cp rice.jpg $out
  '';
}
