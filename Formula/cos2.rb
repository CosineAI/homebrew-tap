# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1516"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1516/cos-darwin-arm64.zip"
      sha256 "5db3e3b1f8e6330140507140a38d30d06301a2480de1979adceca95fa04a0371"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1516/cos-linux-amd64-glibc2.35.zip"
      sha256 "da82003189632eb579a01479d86cbdb0b47af5b71261c1ce35703de88d6aae11"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1516/cos-linux-arm64.zip"
      sha256 "d348eadc28b6bc31e7add7310fad96defc9a21a1987edfd8631413f1042ce8b0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
