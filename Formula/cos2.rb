# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1409"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1409/cos-darwin-arm64.zip"
      sha256 "2a36c90bb7eeaf35e20f0f685ea44e2d017ef971cb8f9a9ec9a7be960eddb3ed"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1409/cos-linux-amd64-glibc2.35.zip"
      sha256 "626053b4cc6bd9fd96582dbd062957bfa2b157ed2fd4e9009498229053d29e1d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1409/cos-linux-arm64.zip"
      sha256 "48905f25e5fe57b3eb89ca3bd7bf474edad9cfed9484072da1f393beb5862306"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
