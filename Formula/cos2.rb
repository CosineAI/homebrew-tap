# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1229"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1229/cos-darwin-amd64.zip"
      sha256 "010eb6184466b03fb77be0e9881672928e64761fa6850c07ce965c1a111c2e98"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1229/cos-darwin-arm64.zip"
      sha256 "40ec83f89fccf570794e66d63b9140736a4e1cef0824f75424a54043c4ce035f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1229/cos-linux-amd64-glibc2.35.zip"
      sha256 "4bec08bcd36dc3f10f0d99497ec6783adf9713cbe8943bdfe7285f802c6447e0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1229/cos-linux-arm64.zip"
      sha256 "a43aaa84a79f77546c5212f0054391bf6d9f334edbd088a5bfc325eb6b361ee2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
