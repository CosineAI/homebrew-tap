# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1469"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1469/cos-darwin-arm64.zip"
      sha256 "19db93f456348591e34818e0bef09da1b1861dcde7833b3c72480c3f6ad1a30c"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1469/cos-linux-amd64-glibc2.35.zip"
      sha256 "20f4afde80f66dfe1d94f54581f836b5ebc87af29a03aea3c6c425b63e880eb8"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1469/cos-linux-arm64.zip"
      sha256 "2f8a5679bb0d024bf467038aa566cb42ca7b32efd483047d77cf55591171297c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
