class Azpect < Formula
  desc "Terminal UI for observing the health of Azure APIs (Function Apps, APIM, Container Apps)."
  homepage "https://github.com/RobbertH/azpect"
  version "0.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/RobbertH/azpect/releases/download/v0.10.0/azpect-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "c2a923e8c27cd8104234d2df02c29b4f4ce12495a543a0250ba320e5e6b2312d"
    end
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.10.0/azpect-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "c0983346a110e64ecfdbc0297f2e0037ffb6f91d524263680f1c12be11fbee58"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/RobbertH/azpect/releases/download/v0.10.0/azpect-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "01e93b698bbb2a55d603470b6dee75a4220d109a0a5d9e83cc3a669305e8c3b4"
    end
  end

  def install
    bin.install "azpect"
  end

  test do
    system "#{bin}/azpect", "--version"
  end
end
