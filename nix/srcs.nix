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
    rev = "78508c6a8db2d6d3e8e09437dbe122bb5e6b2e7e";
    sha256 = "1kwlh22q8scrd7spn3x91c9vv3axgvnqx3w8n9y4hrwkgypm7ahk";
    fetchSubmodules = true;
  };

  setzer-mcd = fetchGit {
    url = "https://github.com/captain13128/setzer-mcd";
    rev = "6d170d2088f5f14bc8b06e2f071f5e09ec88deeb";
    ref = "master";
  };
}
