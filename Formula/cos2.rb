# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1321"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1321/cos-darwin-arm64.zip"
      sha256 "4a41e9f1a16d641e95ec412a672bac6a4f94f76902daee8395ae253a2804614a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1321/cos-linux-amd64-glibc2.35.zip"
      sha256 "2a50d4b7cca2823e3a7fd39d94e4475e5d492c0b47105c861e0570972def4dca"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1321/cos-linux-arm64.zip"
      sha256 "c74fdb5af25c0c605333ab8c6e8862c51753aafbf07a8b0bf95c254c5a724d5c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
