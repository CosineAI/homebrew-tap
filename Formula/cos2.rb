# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1455"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1455/cos-darwin-arm64.zip"
      sha256 "1f9a90531c6b5055902438ea88150e23931f5b9d5aecdacfe96452861e2952f6"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1455/cos-linux-amd64-glibc2.35.zip"
      sha256 "5c4f56ed2c9075ac3415273b04f8ca67cca36346d34d927e2e965768c375de18"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1455/cos-linux-arm64.zip"
      sha256 "37e93621e7d95f0733bf9a8169341ce46ec78effe41d607132e994af320028cf"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
