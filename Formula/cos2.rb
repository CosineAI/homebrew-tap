# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1489"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1489/cos-darwin-arm64.zip"
      sha256 "761526baaaa498759f99a5775bfba9516e897d6947b9ecf745cd362a28870d09"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1489/cos-linux-amd64-glibc2.35.zip"
      sha256 "b926493ddb3a482cf4f1f5745e9fbf2544f04559b2722fdabdc9289b9eecae82"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1489/cos-linux-arm64.zip"
      sha256 "b607f162199659b48f8aa5a9cf0c2e2f1ff0a8e2696f5dcef019b928524c29e5"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
