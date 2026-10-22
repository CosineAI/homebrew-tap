# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1294"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1294/cos-darwin-amd64.zip"
      sha256 "170327716db90664c3e1ac887f72929a47d84dde2e90614d3186f439991b5fe2"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1294/cos-darwin-arm64.zip"
      sha256 "d5efa15d2c9f5a85435626713514f5599ebd7e64f99ea9b9edaca9c3ade66d4f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1294/cos-linux-amd64-glibc2.35.zip"
      sha256 "327ed45a378e5aff01d99cf6a28cd81a8db32d63b8e2c88d11a6ef3cc9eb6652"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1294/cos-linux-arm64.zip"
      sha256 "16b7d71a7b1cd4634a0e4cf019cafad705345fbbbbe6fa15edbbe4f5ba1e813a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
