class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.3.0/azpect-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "856249693340f71d8b6040f333266f17e36df0d0f3c9f8a476fbec7c4b07b2d8"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.3.0/azpect-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "d8fce27d579ade771c610367ff8017669e4ff75a76f2f6c7e093ffd4997e7822"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.3.0/azpect-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "599fde840e5fab29285d893a2eb7058976de8423989948bcd5c9a0233d4becd3"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
