# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1514"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1514/cos-darwin-arm64.zip"
      sha256 "6cad7faf80014e38f084941b6cc5a76924f0ebf9dcd4309f3355408a1cfe8495"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1514/cos-linux-amd64-glibc2.35.zip"
      sha256 "b81fd0d64b2f05bee80e47abca915d6b6da4c8f14ced329bbd1d82d88eb997c1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1514/cos-linux-arm64.zip"
      sha256 "68be5561d036e31462df8b6b8495f46d59174d5733daa8786fd94cfb7b128650"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
