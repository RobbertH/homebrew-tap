class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.9.0/azpect-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "425008f857bdbf09a26cc01e64c2c30d10a39638a86175c7fa4c70d4b0d6cedc"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.9.0/azpect-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "9d45b176c8e3d95a0000c4e0adca3cc33cc803941c1f68b5508da774a5dd80bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.9.0/azpect-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b86d4f4f9e39e4205b4ad0bf974ccb15bb49d7746209860057a8c3be250fe3e1"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
