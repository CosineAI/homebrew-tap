# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1343"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1343/cos-darwin-arm64.zip"
      sha256 "f62bd5efb70f25713fb605d477983ab1595948683af9f171f2d7b6a3aa45c085"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1343/cos-linux-amd64-glibc2.35.zip"
      sha256 "702a9bce306ec44af3cc9fff2ae1f6e14973cd507d5b6228c0b399884929099b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1343/cos-linux-arm64.zip"
      sha256 "1715142e228c9d4382ab7ceb6feeb488d5d6ae21cbc9530735997d246a57b5c9"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
