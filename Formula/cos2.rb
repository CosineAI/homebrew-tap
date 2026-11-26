# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1517"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1517/cos-darwin-arm64.zip"
      sha256 "3d19ccd9a04d958a28d3e609cac833308cfaa674dbbb72beb3583080aa16aaed"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1517/cos-linux-amd64-glibc2.35.zip"
      sha256 "59479ed06f6aaf6bfa3d6df0291a6d6b208fd18cbd946e5e0873f51700ab6519"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1517/cos-linux-arm64.zip"
      sha256 "c812e003fac3d96d8a0d3b9663534a92edb3c03ccb362fc09aebfde419838dfe"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
