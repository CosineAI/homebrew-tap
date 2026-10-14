# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1255"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1255/cos-darwin-amd64.zip"
      sha256 "31055e749a586c285b2e213f8f73cfbf8c043b3fbf2e9aa950f4526d8c8442e1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1255/cos-darwin-arm64.zip"
      sha256 "b646b61b44330368d2204d2e5049ed11b9812a77a28cc8941ecf86b086f06dd7"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1255/cos-linux-amd64-glibc2.35.zip"
      sha256 "ec67b16633c2379d528795edb0d3a686bf88a1ddb3dd31e8922ef631ded0c33f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1255/cos-linux-arm64.zip"
      sha256 "edb68583283ecb5704b17f3148c0a55924feda443e66063e4c979f85bd96f2c8"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
