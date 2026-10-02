# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1224"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1224/cos-darwin-amd64.zip"
      sha256 "282a7b9e47192827dd5d1e1464189e95f900a31f279bc5b030aba73b0a3610d2"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1224/cos-darwin-arm64.zip"
      sha256 "c314ce62633eee74b399d1a6c633d2cf4da0cf388bbc90771d646316dd7a9331"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1224/cos-linux-amd64-glibc2.35.zip"
      sha256 "1c0fd074dcc7de3d9434ab8842a52ada44018fcc3c0dd4bcb2317cce4bfaf8a5"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1224/cos-linux-arm64.zip"
      sha256 "f37f8693de0fa8e63e71b597c0dd426eeb63dc0646c1f1c51e2bda0be6e8d23a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
