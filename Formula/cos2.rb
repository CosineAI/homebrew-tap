# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1480"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1480/cos-darwin-arm64.zip"
      sha256 "bdc59c637404d5723e01299fe48fee611154cc5da71a9054a04979be8a9aedb9"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1480/cos-linux-amd64-glibc2.35.zip"
      sha256 "b4fbe7c2ee30ca621508f4a77f438c0b11d3c1f1acca400a8955e4908fc28fc8"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1480/cos-linux-arm64.zip"
      sha256 "7c99fefa4c26bc6adb19daf1ce5fee3bb4f5fce3a925f9293cd3beab354f8fa6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
