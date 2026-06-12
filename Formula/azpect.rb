class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.6.0/azpect-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "64fbeb4d51a1233216340fa8145c345e134d7c40dfd6e44d848924059e3dbe3b"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.6.0/azpect-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "27a07ade4fb9221e3360296a2573a0fd44074cd401bd0f16a021273c802d5851"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.6.0/azpect-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c324449eb68f79c98e4d25c17eeea7993fb4be1eb73e647ff0ca6a829de2e409"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
