# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1488"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1488/cos-darwin-arm64.zip"
      sha256 "9eb549a8dfd27de2da80874058007d4954d7ef6983b7c746b2f1c055fc21f39a"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1488/cos-linux-amd64-glibc2.35.zip"
      sha256 "0a788e584a602e0ede67d565ce2bd15bd3f4da1b92122b44235fadbc9c832071"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1488/cos-linux-arm64.zip"
      sha256 "46cf7321cc4a1bc8c81cb7a197202e50ed3137f51f0c4a7add7965433337e740"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
