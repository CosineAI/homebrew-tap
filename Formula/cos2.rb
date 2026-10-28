# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1326"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1326/cos-darwin-arm64.zip"
      sha256 "775218c8856f282a3774521be62ff53aed0c4d2ab256af474f88a3ce8de76758"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1326/cos-linux-amd64-glibc2.35.zip"
      sha256 "fabf0c363fe00501323c85a753220e7c1ab358b985a0a66ebc757e72d9ec7fdc"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1326/cos-linux-arm64.zip"
      sha256 "285d15e4fe5d3c9f19db06e8e99d4416f31d607a9aec4b9b904e2a68006dae76"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
