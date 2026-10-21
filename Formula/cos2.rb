# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1285"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1285/cos-darwin-amd64.zip"
      sha256 "0eae382d1ab7f9022f7c282ca3e14edb205189887b9fcfa2638051c5a3f42776"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1285/cos-darwin-arm64.zip"
      sha256 "4625bc02f83d8f528d8f0ff3f83629aead5f43a17bce2268e540607fc6df99d0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1285/cos-linux-amd64-glibc2.35.zip"
      sha256 "b3cad3fd40b8eee61ee168fcb6454628ae463eb4125ba3a31d438e7e5a960ec0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1285/cos-linux-arm64.zip"
      sha256 "a37a2dc105e2c12dd3079aaf01653de3f33ff044d860139dc778ead1200a4106"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
