# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1338"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1338/cos-darwin-arm64.zip"
      sha256 "80948b0556ce78ac931ec115b1b895addaad05241823a0693adabd9d14506d99"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1338/cos-linux-amd64-glibc2.35.zip"
      sha256 "97169136f363ea08cb65e25a1d4e5ab00f88f209b10611755778ec941fddf7c3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1338/cos-linux-arm64.zip"
      sha256 "cef0c8bd9a7e47e6bdc8f70fe749b1235f172dac4786de58f6fd9d4e35801d9c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
