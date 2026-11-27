# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1519"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1519/cos-darwin-arm64.zip"
      sha256 "b7dcd39c2eee82b1f13820dc94a2ea91a64faaa665e4735b792f36ca7e3747f8"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1519/cos-linux-amd64-glibc2.35.zip"
      sha256 "f9bd0c60d9688f3ac718166a6ab184f13c77282f86ddb995bc5d8615f4bddabc"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1519/cos-linux-arm64.zip"
      sha256 "812c894e1b3d84e24553164a1e55dccc50672a771f3af90e8fc5740774eec031"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
