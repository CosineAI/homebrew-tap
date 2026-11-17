# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1445"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1445/cos-darwin-arm64.zip"
      sha256 "2025586f00831e36f449f05d742db111b488b6b61b921e8e010dff0c1b2b9428"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1445/cos-linux-amd64-glibc2.35.zip"
      sha256 "0ba79d876058210a957732432759f0d0d219c00c7ac39b08d220618fd172cd47"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1445/cos-linux-arm64.zip"
      sha256 "04786de25547f053bcfbf9ebcef81075981a6a0973d3c5887d5701118b319d6a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
