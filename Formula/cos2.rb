# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1418"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1418/cos-darwin-arm64.zip"
      sha256 "60b1a39ec78158c5b2efd2ff969f9314a80bad97f6af78255bc0e55f8ecf49b4"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1418/cos-linux-amd64-glibc2.35.zip"
      sha256 "28f49966b7aec13b42d1a57414d50bb224c26d2a99d08b41f74657d68cfcff76"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1418/cos-linux-arm64.zip"
      sha256 "3def2e9c10cb4e92e18634fddf8f28121b242d71e931646f70872149078c8193"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
