class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.5.1/azpect-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "2ca9ab956b3371d16d45c116f0ebaaa5041a4cbb5b9fb889ad87467362d0f06e"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.5.1/azpect-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "c87f9faac12cae4b234358497a0dfb1ec490580870cc824fe2cb83412424db07"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.5.1/azpect-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a54c009d723943c7a14921561d562ab6cf414e8de699650cd84e545cd1e351b"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
