# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1256"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1256/cos-darwin-amd64.zip"
      sha256 "0b22809a2c31148ff38f6f6de999b5c20e5c1cb6f6c9d1165c427c68d41292c2"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1256/cos-darwin-arm64.zip"
      sha256 "7f97a4824e39ccdf37d9c9aeb59ebd7699232ab2571377e299f9cc91d9ec3eb6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1256/cos-linux-amd64-glibc2.35.zip"
      sha256 "eead9f2c627bc4c347f2ec36db41c95403087876d5f9136b97e8ea7f109931fa"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1256/cos-linux-arm64.zip"
      sha256 "62aa05498adcc0d069164b0b35cf2827811a2a08df0bda17b0822254e1ce4e2a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
