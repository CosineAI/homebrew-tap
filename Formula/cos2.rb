# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1271"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1271/cos-darwin-amd64.zip"
      sha256 "c09eb0c6196bce4d42238c1250ecb6112bf16ec581508ec35ac3a38ad2fc44d0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1271/cos-darwin-arm64.zip"
      sha256 "c29f33025ff22b3282f64448aacc6d6a7e9872661ee0394889246fa9daef1977"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1271/cos-linux-amd64-glibc2.35.zip"
      sha256 "957255806c9b044f5a7115897e27db485a0311b800e4c5930976f1610b582e16"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1271/cos-linux-arm64.zip"
      sha256 "2c38a2cab146b356e4415062db85751e6e7dcd4fbfb08e8db6b6fcaebd7d7eb9"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
