# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1476"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1476/cos-darwin-arm64.zip"
      sha256 "ff783e7be16022424ade847f213a2beea44617fb25607f4542c2ce233eacb09c"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1476/cos-linux-amd64-glibc2.35.zip"
      sha256 "06a55443190fc7e8f62df21a63f08cdb18d390d4ae898fba46c0ebd44f06ee85"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1476/cos-linux-arm64.zip"
      sha256 "795b5dbde5e9aac8657fbc6b3885a13043e097d853cbf2238b1137e1738cea63"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
