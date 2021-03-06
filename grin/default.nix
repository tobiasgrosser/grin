{ Diff, mkDerivation, ansi-wl-pprint, base, bimap, bytestring, comonad
, containers, criterion, deepseq, directory, extra, filepath, free
, functor-infix, generic-random, ghc, ghc-paths, haskeline, hspec
, hspec-discover, llvm-hs, llvm-hs-pretty, llvm-hs-pure
, logict, megaparsec, microlens, microlens-mtl, microlens-platform
, microlens-th, monad-gen, mtl, neat-interpolation
, optparse-applicative, pretty-show, pretty-simple, process
, QuickCheck, quickcheck-instances, recursion-schemes, set-extra
, stdenv, template-haskell, text, text-short
, transformers, unix, vector
}:
mkDerivation {
  pname = "grin";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    Diff ansi-wl-pprint base bimap bytestring comonad containers deepseq
    directory extra filepath free functor-infix generic-random ghc
    hspec llvm-hs llvm-hs-pretty llvm-hs-pure logict megaparsec
    microlens microlens-mtl microlens-platform microlens-th monad-gen
    mtl neat-interpolation optparse-applicative pretty-show
    pretty-simple process QuickCheck quickcheck-instances recursion-schemes
    set-extra template-haskell text text-short transformers vector
  ];
  executableHaskellDepends = [
    ansi-wl-pprint base containers directory filepath ghc ghc-paths
    haskeline llvm-hs-pretty megaparsec microlens microlens-mtl
    microlens-platform microlens-th mtl optparse-applicative
    pretty-show pretty-simple process recursion-schemes text
    transformers unix
  ];
  testHaskellDepends = [
    base containers deepseq functor-infix hspec hspec-discover
    QuickCheck vector
  ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/githubuser/grin#readme";
  license = stdenv.lib.licenses.bsd3;
}
