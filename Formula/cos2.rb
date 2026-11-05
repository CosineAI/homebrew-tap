# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1382"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1382/cos-darwin-arm64.zip"
      sha256 "378531165c2f211a8680058df6561bd5d6c75b84209a6c66971c69b636685664"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1382/cos-linux-amd64-glibc2.35.zip"
      sha256 "66e04026198338ca64c880a25c654d076bebfbc85ee460d76f230699abc01b81"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1382/cos-linux-arm64.zip"
      sha256 "efc2e4eb4f6c3f515be1d6b27f1c8536fb424aba2cfd05672bab4780b6cb3921"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
