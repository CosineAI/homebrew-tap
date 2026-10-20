# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1276"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1276/cos-darwin-amd64.zip"
      sha256 "36cd39ecec0ad0afbf5b595c86d3013972224f9d06ae8840a07a0362304892fb"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1276/cos-darwin-arm64.zip"
      sha256 "36b5fa21a4fcd158dcf4a4c414c8523e66aaed16bcd51532cb0d7a192df7ff0d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1276/cos-linux-amd64-glibc2.35.zip"
      sha256 "e3e2ab4327172ee37bb6fe6fd84551b1ef90dc53b1acd308af55736540e5e706"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1276/cos-linux-arm64.zip"
      sha256 "bf993576de1940e02c53fb2255dc06754beaa880b03eb7cf632c7e6f88bfbd70"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
