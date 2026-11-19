# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1458"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1458/cos-darwin-arm64.zip"
      sha256 "2cca1bc8a582c21c52c91c0cc2da5cbe90c37d6230399df277cdadd16f115ca5"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1458/cos-linux-amd64-glibc2.35.zip"
      sha256 "e843117b08e324cb0c1a897fd06f3e1e7b30deded34b1f1348903a3807f6ac0f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1458/cos-linux-arm64.zip"
      sha256 "708b2b78c3a9769d1d578397577df1ed7666de2316bcc6a8cf4fde074c60a626"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
