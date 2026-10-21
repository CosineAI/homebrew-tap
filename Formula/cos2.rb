# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1288"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1288/cos-darwin-amd64.zip"
      sha256 "37ff7914ef126c9aa57d7d10756dc499406b9703c76d11f37b5260cea7fef2dc"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1288/cos-darwin-arm64.zip"
      sha256 "3918d5bfdfa13e196cb2cfff535e39e27e7524e774393665cfedc28509d3211f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1288/cos-linux-amd64-glibc2.35.zip"
      sha256 "f98534280519999f3fce4be0467bb1bc6ef8d41553ef6adc9f6031d4ae41cdc0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1288/cos-linux-arm64.zip"
      sha256 "587032a87579a9cf7fc53f6829dd073f44a034d7035e40535354b82286f77698"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
