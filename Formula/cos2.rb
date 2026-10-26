# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1305"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1305/cos-darwin-amd64.zip"
      sha256 "17c169e5a6d36616068c2b673173bc74061671b80e786405aca7c5dd380b96a8"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1305/cos-darwin-arm64.zip"
      sha256 "9258d6f1b5d20aa0593117563b72dd63b03c2537ab440e93fef10d73b26bdfbc"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1305/cos-linux-amd64-glibc2.35.zip"
      sha256 "668c6aab24d4cf56aecc587132b8e108ab6ab7d489318f6adb27a807f9293a12"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1305/cos-linux-arm64.zip"
      sha256 "0b9bab40f1e93dcf51678f2220e8eab89d4c91ae8c37313a77e2d26c9975d237"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
