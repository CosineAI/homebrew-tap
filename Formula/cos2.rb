# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1451"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1451/cos-darwin-arm64.zip"
      sha256 "95cfe3669eb9a9c455153d9d0a1f6f95dbcde0cefe5e39aa558a6ef70fbabe3a"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1451/cos-linux-amd64-glibc2.35.zip"
      sha256 "bebecd174fe5c66c37b27d9a02c43edb67ad5f31dfb554eea898cc6696b34075"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1451/cos-linux-arm64.zip"
      sha256 "4c55e210f364f72b89c09c2d1214b3b5d2655682a4f07def5d87e0d7a4460594"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
