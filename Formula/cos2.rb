# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1226"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1226/cos-darwin-amd64.zip"
      sha256 "deaaf650ff9e1c77b54a1213120d58b8bcbd0ccc9f3256b370eec83638912b79"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1226/cos-darwin-arm64.zip"
      sha256 "1a8768f41180d02c78605c93a67a6af0cc4df8e1df43e14b7c92b48ab920fc01"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1226/cos-linux-amd64-glibc2.35.zip"
      sha256 "97cf8154a92daa58cb9fa026ab8383af2d80c93430590b0c680b81d3b4370b02"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1226/cos-linux-arm64.zip"
      sha256 "77d2ad7f7c51a06b053ff49ebbd66694ddd933b43adc4d94c0872da5ef866619"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
