# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1302"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1302/cos-darwin-amd64.zip"
      sha256 "10d4f9d4f630dfdcce627c26e761851e7e313e140295baf3fae308a1bcba8013"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1302/cos-darwin-arm64.zip"
      sha256 "0191189932de5bd9ebed745d3e701328e9a6f8b6c9caf727ee6680ca2746546c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1302/cos-linux-amd64-glibc2.35.zip"
      sha256 "6d228324f028ba9f9c95451a67ff550f8ce6c354a86952d2724ad879604b0c90"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1302/cos-linux-arm64.zip"
      sha256 "16dcc8be675fafea31b4999cf0cc7388d379e940f05945ce59d52f43c08e600a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
