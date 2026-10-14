# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1257"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1257/cos-darwin-amd64.zip"
      sha256 "652131aee12e6b543ff1bcd4db8d843549cf94f78192339569e6f7688ad45312"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1257/cos-darwin-arm64.zip"
      sha256 "e54e3b048025c2d5b72f33bf5faab66c67ccdee2af37486d63119c867ead1086"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1257/cos-linux-amd64-glibc2.35.zip"
      sha256 "8c371a3c16236afe024826e25dcf5c2ce0027263d3032acf9064e1f594f9a937"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1257/cos-linux-arm64.zip"
      sha256 "51c5e5c9dd6787e28d223c00529fea94a72f79b46bf46b9e21345edc95d3e633"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
