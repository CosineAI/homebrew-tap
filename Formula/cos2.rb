# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1334"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1334/cos-darwin-arm64.zip"
      sha256 "6143564bed5f72a2d617647794f8229f4ffabe4b783fb6fac85432c56b5da708"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1334/cos-linux-amd64-glibc2.35.zip"
      sha256 "2634045cb767e0ad6c1c0d987a13164c593d3060d8285fdf3bfc9f3c8fb3fbec"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1334/cos-linux-arm64.zip"
      sha256 "f68b068a033b7e10e14baee7630e0fb37a655f1967750bdbec242e6247655aab"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
