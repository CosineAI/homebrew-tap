# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1360"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1360/cos-darwin-arm64.zip"
      sha256 "136f6035a5cefb314288ec226355e960c759a53374b113fdcbc13efdd1f407df"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1360/cos-linux-amd64-glibc2.35.zip"
      sha256 "696efee01d0c7e1e4181315a49a4cb116c369bfabf2f8f4c3ff66b6449faf275"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1360/cos-linux-arm64.zip"
      sha256 "28d8aa9e9cc9f24904f436338380394f0d1474ff777571688670e1111160422c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
