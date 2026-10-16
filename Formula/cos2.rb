# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1262"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1262/cos-darwin-amd64.zip"
      sha256 "c8705522bbb595344ec4f2a91a404e3e31c4fcd86771d08730bb206aa4094eba"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1262/cos-darwin-arm64.zip"
      sha256 "dcabe61e17ef4f6964bc0cc1f56adeb1bc7f1da9fd29363b275e034877648c5f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1262/cos-linux-amd64-glibc2.35.zip"
      sha256 "c8227d613cf723bd886c9cec4fa4723cfdc394171adf0659433d42a06e44a640"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1262/cos-linux-arm64.zip"
      sha256 "257b36abe40b79dd44cda16e8c4c745687a5ec675a7fb6db441e3c7992b59414"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
