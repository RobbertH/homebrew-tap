class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.11.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.11.0/azpect-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "abefad9346cb1f2fa6bb26328fefc3869760fb8f28810074f156144fe41fc97b"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.11.0/azpect-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "a13641425d5dbc8514abfcedd611ee575906650c7977ab7cc2a88f9c19700f7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.11.0/azpect-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57f756c64593f281d02cc41e41f752609e641c040da0eee518d3e74a8e9391ea"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
