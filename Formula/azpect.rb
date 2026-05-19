class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.2.1/azpect-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "d0eedd89cb45ac224742e545b78f41715c9a7b9f86152930c27c02d3436bfb02"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.2.1/azpect-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "be44dd172665905ae7c9c19f5c87a35bb26b22710f2d31c90f615e1c2fb97249"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.2.1/azpect-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "544732e4e0310b3f1d12ff1413bb50f5255119fecd73886dfffe89a02338e332"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
