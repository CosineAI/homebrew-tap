# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1220"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1220/cos-darwin-amd64.zip"
      sha256 "6689662a3088b788c666cbd24cd808a013c11d73f93e1a8ed831c7b7b0b47852"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1220/cos-darwin-arm64.zip"
      sha256 "c0be61514a7d46a2fa3635f23f5a1d3fdd991493744fe497b7b11be9e1609db8"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1220/cos-linux-amd64-glibc2.35.zip"
      sha256 "556b5199d32985981c0460784f93391e31703acf8d13e58ab26c51b97f14f865"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1220/cos-linux-arm64.zip"
      sha256 "58f7d0a7cbf97f393709f5c0234e86a99437566255aca939cb5d5fb10ddcfac0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
