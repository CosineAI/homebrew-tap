# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1308"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1308/cos-darwin-amd64.zip"
      sha256 "4a17a42f41384835dbbc0f60c7029dd429d75f3e8c3149c93a0aa7fd3b1ccf0f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1308/cos-darwin-arm64.zip"
      sha256 "acb9131b40e8889084bf5b5ff866158841920c024fd993872cbd3ec115c0ee7d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1308/cos-linux-amd64-glibc2.35.zip"
      sha256 "dd5344516ee10d04bf08e0fbffae01d2ad74072f58e3cc990178258a3eef7e76"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1308/cos-linux-arm64.zip"
      sha256 "e7484057b1e7a27c5ab093f40ba48cd39247e3e3d3561080b57e982646791d28"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
