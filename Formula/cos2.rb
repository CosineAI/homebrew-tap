# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1219"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1219/cos-darwin-amd64.zip"
      sha256 "7fc6ebd263dea6ba6928b3059d43d359e8501fee0e5e6136a23d2e03da46ed7d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1219/cos-darwin-arm64.zip"
      sha256 "0d446d15f0199edc526b85fecf3f9b79de334abd6d2b2db62dea5549e71044fa"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1219/cos-linux-amd64-glibc2.35.zip"
      sha256 "261d88bafde5543ec34f89073dd57f92a79011f800e21832019af4d9e4c8a7ae"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1219/cos-linux-arm64.zip"
      sha256 "78b720a49b3119aecb84565fe81efba1a72df3f9bb2715ed8e9786b77dfad3d6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
