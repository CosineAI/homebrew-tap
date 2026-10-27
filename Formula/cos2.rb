# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1322"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1322/cos-darwin-arm64.zip"
      sha256 "723be604a6b41bcbb031703a500a1aaa9e5f1aa4906fb06200f90680971a3bb1"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1322/cos-linux-amd64-glibc2.35.zip"
      sha256 "fa04ca927d019ef94d6bfeab7458c748078030b28f2fa3027ae517e8bf2ff93f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1322/cos-linux-arm64.zip"
      sha256 "fefbbf2e3d72909c144eac8fa3c0a4c9c4960f1837ca9b84f534210075d9df9e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
