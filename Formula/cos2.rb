# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1500"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1500/cos-darwin-arm64.zip"
      sha256 "5d94c4c50456e5cbeea76f952856dd60318dea1dca6362216e16f8cb332ba6f9"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1500/cos-linux-amd64-glibc2.35.zip"
      sha256 "e886c2038eb98b40f9349364bb0b2df829b032095f790a4258f4e3a7a5430a8f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1500/cos-linux-arm64.zip"
      sha256 "84a754bb114528f3bf8fb8e5cc5136cbd89f0b4e73a4dd4ac39a703431d2b291"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
