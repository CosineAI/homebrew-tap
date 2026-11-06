# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1394"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1394/cos-darwin-arm64.zip"
      sha256 "f6fe2566288a15ae5148886774b72da4324ba97561201163efba310f8485dde9"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1394/cos-linux-amd64-glibc2.35.zip"
      sha256 "d948dac222296332a5961d6d87088cf0ae446b11db0edf8f928a1cc95be243e1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1394/cos-linux-arm64.zip"
      sha256 "20644056be56b5e375fd4d9c79c61c9502754c23f7e3e571b6768856ca0fb444"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
