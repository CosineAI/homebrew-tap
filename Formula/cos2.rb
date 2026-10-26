# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1310"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1310/cos-darwin-amd64.zip"
      sha256 "3388a5ff228a8a5d37171feb84f39c6d9a97774bca96cf74e20b08fe38106ddd"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1310/cos-darwin-arm64.zip"
      sha256 "66b9f5aad9ef33a0efce0494f471ef2c9a54ca86592a87e282d7239c50838064"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1310/cos-linux-amd64-glibc2.35.zip"
      sha256 "e7d0b9b1dd87eef57c4a2ecda86a9f24013b24b3b1d16ad52479f99642bac73f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1310/cos-linux-arm64.zip"
      sha256 "efda0c5bc351e2a03dcb03ffd7bc2596ae7a8227f225f41b9956ec6b18e34070"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
