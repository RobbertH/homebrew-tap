class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.2.1/azpect-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "9a882fcf92b96195345c7b6fdfa10f90bf81fe45f326e60005f17c054678f747"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.2.1/azpect-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "3992ffd17965192c4572e539f8328fe4b5d4804a52836f7c0b7e89a84856b325"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.2.1/azpect-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86040c90fe8413314eb522997638857fdd7b5b335ad9c16842103053c82c892e"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
