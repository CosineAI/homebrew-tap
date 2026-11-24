# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1501"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1501/cos-darwin-arm64.zip"
      sha256 "d4568938add9fe150b0286d26d4558159c428ffec54aecfe44cd6702f886eb3e"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1501/cos-linux-amd64-glibc2.35.zip"
      sha256 "e2e3e8842757cccce80aceffb4f7dd33d17065ccef38c0ad685d1e8a74562e0f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1501/cos-linux-arm64.zip"
      sha256 "77b1adf38ac3c7f6a1013057b781cd1e03bcb1d01c4844f6816bbc85e6b6c87d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
