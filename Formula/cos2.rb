# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1333"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1333/cos-darwin-arm64.zip"
      sha256 "5031190bd5348e4295c4585c8f76a376aebe7ded96546d5f70c2491ccfc2a404"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1333/cos-linux-amd64-glibc2.35.zip"
      sha256 "5bd210c8e9b1c00d07413c79af073e485151a226e0b89f3b7ac873fa9add0503"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1333/cos-linux-arm64.zip"
      sha256 "220c49213ed24ceb304621e26d1df9ad3c6517c89b80a88b8288f7c2739f83d7"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
