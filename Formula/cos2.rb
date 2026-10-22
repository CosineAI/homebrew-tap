# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1297"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1297/cos-darwin-amd64.zip"
      sha256 "77a7c87024e3b93a8ad388f68d0890928336ae8055bf0b811a4e2764435c5800"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1297/cos-darwin-arm64.zip"
      sha256 "d22a9290ab0968d0796d29f94104e749675c025efeb5af4ff9d0fba7873f716e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1297/cos-linux-amd64-glibc2.35.zip"
      sha256 "29c06a717a5d937a3a3ef3d72ebf6d3e2b32e279724bea5a6baafd427b78bf97"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1297/cos-linux-arm64.zip"
      sha256 "3632f40534d311f58b745039df266e9a0b68b67cec01fa5fd8a4e1abe3dffb05"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
