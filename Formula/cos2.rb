# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1490"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1490/cos-darwin-arm64.zip"
      sha256 "acfcd5010d95469a7d36afeb555c07fd4a0958dbc024b0a3e5093dac29ee2a29"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1490/cos-linux-amd64-glibc2.35.zip"
      sha256 "19c8a9d198cc3faa3543fe93c7cd24f54c53a15af6be41167c31ff261d707921"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1490/cos-linux-arm64.zip"
      sha256 "6b32d5912214fa7658ad0ca1e632516afc44c331cbbc5607cf767377cf63c0da"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
