# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1417"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1417/cos-darwin-arm64.zip"
      sha256 "38dfa59b683c80ed5c948465693f834a328780529400a8aaef43e16feb59f056"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1417/cos-linux-amd64-glibc2.35.zip"
      sha256 "31a395923c5d290cb20ebb6f8e56c7854e7f61c60862064ea839fa34c20677a1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1417/cos-linux-arm64.zip"
      sha256 "9f2681e0cf364d175e53d4a3f51828799bbb6f2a7f2f5c72726de099218a9267"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
