# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1348"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1348/cos-darwin-arm64.zip"
      sha256 "088c8c989789bbc42ce1150afda1427279231a7b6f8c314f1b2350cd2d595534"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1348/cos-linux-amd64-glibc2.35.zip"
      sha256 "3e88acc5f67b8638bbf1e2a3358297caac90959674f454831ac134238b4c3f8e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1348/cos-linux-arm64.zip"
      sha256 "8574a8f3c98050fc2912b1dd6122ec079c2f31f146d31f21d7aa2566b791b183"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
