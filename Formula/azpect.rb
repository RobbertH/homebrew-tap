class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.2.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.2.2/azpect-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "95d193737135fa011730a0baad53efa3a1c3de9e5c872fc180151e465726ae8c"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.2.2/azpect-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "44a193bcca7cd78e877e475b087b7cf66b032d406304d89a781e9fad57923669"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.2.2/azpect-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bfa4a30281a7fc8999f5c483baf066543f70a658f7ae5d35bf2a662be56182bb"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
