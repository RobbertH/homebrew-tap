class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.8.0/azpect-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "7fbaa0fc61e7ac8105d91f98dfb07875bc186c26abff9924a382fe18d6209fc8"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.8.0/azpect-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "136861bcda770a801103a8ada2966911cea478116d70fe2a010261e62d6e6632"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.8.0/azpect-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b911e71304b111c422387d697d1881e1661561b4ad5c98ced5a870be966cb2a"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
