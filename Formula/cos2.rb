# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1389"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1389/cos-darwin-arm64.zip"
      sha256 "c9befe1ee198fffef1b59ca867de21a0dbac08058408543ee25e5bacb0b1f6dc"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1389/cos-linux-amd64-glibc2.35.zip"
      sha256 "e49cd99f85cce18adc858c8ef86204639389b17a0883dc0de5045c457b6e80ee"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1389/cos-linux-arm64.zip"
      sha256 "3dccf190374f0b841796bf59f530be1e73eca9c5400d3379611ba3e6dc9ef46e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
