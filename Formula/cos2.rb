# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1391"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1391/cos-darwin-arm64.zip"
      sha256 "adaaa40766681840d8a49cc682ac650ad592531878f171243697516cc46031a8"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1391/cos-linux-amd64-glibc2.35.zip"
      sha256 "0323f020c7ed22cb68b5b0f633914f75228678d905cefc2c2ec798ad73c4ed69"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1391/cos-linux-arm64.zip"
      sha256 "287a1498d08b25efd5735aa86f816a460fe6b2f0c89f1b5b48f5aac01b5b191c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
