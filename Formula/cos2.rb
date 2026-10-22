# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1290"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1290/cos-darwin-amd64.zip"
      sha256 "79c65de9663f2abfb75745c6654fe48ec77e58bf32c070007771625d8f778457"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1290/cos-darwin-arm64.zip"
      sha256 "2b1b6d0e15dce612a110e66c7ff8968deb1352f876d80249be5aa7f187c44489"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1290/cos-linux-amd64-glibc2.35.zip"
      sha256 "d6b44271d7213339fa07fbf414e6e5484947f20f5e4d3070b19201c091456eea"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1290/cos-linux-arm64.zip"
      sha256 "810e9e2d143d8c77453f24dd3616677e3a2198ad7bde1a8043a552c52177d449"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
