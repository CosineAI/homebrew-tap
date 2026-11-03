# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1368"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1368/cos-darwin-arm64.zip"
      sha256 "09562493156fae994d98583005785f4102f6cf64964a51c0f8c27bfcad51b16b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1368/cos-linux-amd64-glibc2.35.zip"
      sha256 "e4e08aea9157ed6d7135396cdb36f86616c78b6b36def8cfd9ff4d4e8d1a9d90"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1368/cos-linux-arm64.zip"
      sha256 "c38d16e8fc6ffcab112526587fab42999bb85fd922d8fcfc1465075412e8abe6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
