class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.7.0/azpect-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "a8d6b7a6c351c3d304e071e821fe68884e03cb673dbeaeb99d648c01d8f9b5f0"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.7.0/azpect-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "8c631bf1880d20104ee3f9896ffc9094d103978dd9743bd5921978a1235340ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.7.0/azpect-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "368e945c381dc71cdb71db41b88818853e7b525a533f00d1850dcd5c24ef9032"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
