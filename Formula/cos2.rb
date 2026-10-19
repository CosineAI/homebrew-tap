# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1265"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1265/cos-darwin-amd64.zip"
      sha256 "20d908c57ae33ceac3cef6d764e651bcb4fecb8f94f3ebe3ed14a2b907a06adc"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1265/cos-darwin-arm64.zip"
      sha256 "f2fe8417980390c122d5de05f0f81541e62abfb542596edbce47622decc6fc36"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1265/cos-linux-amd64-glibc2.35.zip"
      sha256 "58b6a6e39e16b50dd642bb18bbe75bcb526855015371247da56fcba4ab357ae1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1265/cos-linux-arm64.zip"
      sha256 "2cd3cfbb380c450608965764c924d69b1bcf730b4ac53e7bc060010b63bc58f7"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
