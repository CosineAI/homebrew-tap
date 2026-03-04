# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "v2.0.0-beta13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosineAI/cli2/releases/download/v2.0.0-beta13/cos2-darwin-arm64.zip"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/CosineAI/cli2/releases/download/v2.0.0-beta13/cos2-linux-amd64.zip"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/CosineAI/cli2/releases/download/v2.0.0-beta13/cos2-linux-arm64.zip"
      def install
        bin.install "cos"
      end
    end
  end

end
