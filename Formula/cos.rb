# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "v2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/release/v2.0.1/cos-darwin-arm64.zip"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/release/v2.0.1/cos-linux-amd64.zip"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/release/v2.0.1/cos-linux-arm64.zip"
      def install
        bin.install "cos"
      end
    end
  end

end
