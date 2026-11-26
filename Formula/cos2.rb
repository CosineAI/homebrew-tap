# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1518"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1518/cos-darwin-arm64.zip"
      sha256 "5da0c8c634c85ec8dfdb895cccb2272abee5767137663af41ce677e788abb0e8"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1518/cos-linux-amd64-glibc2.35.zip"
      sha256 "fbd883d39f5563c60aa314e532e00f3bd2f3026955215a7439b224e52dc7374c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1518/cos-linux-arm64.zip"
      sha256 "00ea8caac3eaf5534d19020704bf216aaef9931c36f48f86f4588d491ed9cdc4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
