# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1344"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1344/cos-darwin-arm64.zip"
      sha256 "9a472d829f440a5fcdf99d10fba44b1731202aa03dacd0b1d8e347b560dc2539"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1344/cos-linux-amd64-glibc2.35.zip"
      sha256 "2b5a94c89ee5c1f9f74424cd677a5eeb5813f98c8b676b032f0c37237e3648d4"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1344/cos-linux-arm64.zip"
      sha256 "c6e157ded40bea8524b90a8485824055b7bc1d922114226cede649d5ad64d17e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
