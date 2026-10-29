# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1345"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1345/cos-darwin-arm64.zip"
      sha256 "60e194bd7f7831789679fca88548cc73c197851bd6076a53957b22348029dd21"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1345/cos-linux-amd64-glibc2.35.zip"
      sha256 "22a9b1052c0c18de70bf86f9e890a5a3440b96ea9c9b9555c5afee2812de36d0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1345/cos-linux-arm64.zip"
      sha256 "16e8827e69a522f326d0c1376a0cf85d6a5422ffcbd3f35d24c5f342a880c99d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
