# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1319"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1319/cos-darwin-arm64.zip"
      sha256 "5019158fc96863c64c1302a4f372aed48e9a175519de30ca03e08780a43866d1"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1319/cos-linux-amd64-glibc2.35.zip"
      sha256 "700e96f6c1a2bcf6725346207e13650e9e32b437383e7f23d3f7fb19eee45a23"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1319/cos-linux-arm64.zip"
      sha256 "f6c691effb2e999cf14dc0634cbccfe48dc308fce279ceacf83a834d96ccbb69"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
