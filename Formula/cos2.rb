# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1306"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1306/cos-darwin-amd64.zip"
      sha256 "5fbb32990eccb001381916d1b112fb151319603462440d6fb8460f735f27a188"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1306/cos-darwin-arm64.zip"
      sha256 "c8441ca5e75959b52c5fbb8c12162712de8833aa81a6c3a4ab4b800489c9d4bb"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1306/cos-linux-amd64-glibc2.35.zip"
      sha256 "ab8734742631e605fd8ceee3c997d77b5e6069c093699c97f4fbe3baea8659de"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1306/cos-linux-arm64.zip"
      sha256 "00b410189055fff04e7a0e3ba6c98e593742ab0427180232336651fce25bf68c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
