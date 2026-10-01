# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1222"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1222/cos-darwin-amd64.zip"
      sha256 "9f9866e932e2c12494512d8ab8798a81a3aaf5b7ded3f98f0c4d901f70660d6b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1222/cos-darwin-arm64.zip"
      sha256 "a75672df427bcba03259aecaa965ebc64f5cbce3d0c2b2a260ed5c4c5a75476b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1222/cos-linux-amd64-glibc2.35.zip"
      sha256 "516dc00faecc3e6f1dcde7e9312bc3241068c7872f8268401ad0904ffb45cf0f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1222/cos-linux-arm64.zip"
      sha256 "b7f48540ada84670c0a3d09ae21a3664a6e60ab70cbb4a2d0722360531625290"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
