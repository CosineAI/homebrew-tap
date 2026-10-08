# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1244"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1244/cos-darwin-amd64.zip"
      sha256 "7767a33ade1c5b4f4aca68b3ef3419f3da8242a6dfee2e058434293d2de533cb"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1244/cos-darwin-arm64.zip"
      sha256 "ffc6b6f6f22015d7fe02edf10f8780958c268bc6dc47be98959649ef02bbe2ea"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1244/cos-linux-amd64-glibc2.35.zip"
      sha256 "a334ba55c6a4d6cfcec9657d157f47364ab96b046a9f50bfefac91e10806cec1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1244/cos-linux-arm64.zip"
      sha256 "c2ffaeea36263ec0d4a54a13e6c1eab5f604ac7a0952c2b597e091c6380437b6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
