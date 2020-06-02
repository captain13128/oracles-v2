{ fetchgit }:

rec {
  makerpkgs = import (fetchGit {
    url = "https://github.com/makerdao/nixpkgs-pin";
    rev = "d4b7fe56b38236566b3014d328be1bd9c7be7a2f";
    ref = "master";
  }) {
    dapptoolsOverrides = {
      current = dapptools-seth-0_8_4-pre;
    };
  };

  dapptools-seth-0_8_4-pre = fetchgit {
    url = "https://github.com/dapphub/dapptools";
    rev = "ab33933b239cedb06dc5427fa630790a09a13348";
    sha256 = "1zvv7fd4m7v2g6apd075jfhgl86rgwnwxsk09mgzdsg01j7297s8";
    fetchSubmodules = true;
  };

  setzer-mcd = fetchGit {
    url = "https://github.com/captain13128/setzer-mcd";
    rev = "e5ca0b0760e0ba7b1a60fb413cba2cc79c2fe4a5";
    ref = "master";
  };
}
