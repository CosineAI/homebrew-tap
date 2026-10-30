# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1352"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1352/cos-darwin-arm64.zip"
      sha256 "865e37d2827a796eabfb0e0e1a2fa19db40ee5f995c9c33b7b27df76b2f31871"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1352/cos-linux-amd64-glibc2.35.zip"
      sha256 "b372fae500e7200f6a53b0f77418ea62a861f77d248de6b43e01eba851e15c93"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1352/cos-linux-arm64.zip"
      sha256 "7b3027c76cd692eb5cb89a6499b1a2806ca986a27e4c95fafdde98255ea2798a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
