# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1275"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1275/cos-darwin-amd64.zip"
      sha256 "4f72c53d3cb66c5b84162bb019fc5e81751d74f2ee66f7731cab0c0b81c06878"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1275/cos-darwin-arm64.zip"
      sha256 "bf0001a2c4042a0914a2a6ceaf3c3bbe1e2cccbaf5313812c906f653f0286475"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1275/cos-linux-amd64-glibc2.35.zip"
      sha256 "7a7da6288f91165d5c895d89bb7bd0255c3d8d987abc9d13bbd4258d681f5de7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1275/cos-linux-arm64.zip"
      sha256 "f3e91e0597cc6e100443510cdd5d847610905c3de6fbff152452f623cc4f0e14"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
