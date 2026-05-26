class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.5.0/azpect-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d84d2bc65c98839cd724749f16971981a4e9f7d705860c4dcc9aca60e3b2a9ca"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.5.0/azpect-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "167af5c579d3c451a0c423d5da7fc6d0faa2fdf804402306b67ed8e786c29279"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.5.0/azpect-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "044f2d984caf57ea074f7dfafe36e7c5760365785a4773e98972448ec910e281"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
