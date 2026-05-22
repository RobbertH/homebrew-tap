class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.4.0/azpect-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "c062eda44e2856fe1f9196ebd6a7a77bc0bc25f645c7247d60b4748bf65e06a7"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.4.0/azpect-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "51b0fdae70b0e57c1a8d25e10c3abdf6c30639db6a069acbad716819c8fc9818"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.4.0/azpect-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8dc3140479b1c1568c7f861803e20ff603e1154a108b080cffb068c2abfea64"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
