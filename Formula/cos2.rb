# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1460"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1460/cos-darwin-arm64.zip"
      sha256 "7c2e0f8eda5e27d11ab1c53a82450dd4b0867315304b56c608ba77eeed9361d4"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1460/cos-linux-amd64-glibc2.35.zip"
      sha256 "7d64e4de4b25570c0e76210166098ca4312ae5af21ad13b299866750db96208b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1460/cos-linux-arm64.zip"
      sha256 "7c5486011a4c43d11e4d655107eb651d4ec278c8449ce1d94546f88f51650137"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
