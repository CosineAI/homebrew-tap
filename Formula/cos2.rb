# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1511"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1511/cos-darwin-arm64.zip"
      sha256 "0d8f8a92d4a9f673bc73280f0eed64b59c95ce8ff768d536ba6e2e26fd73b867"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1511/cos-linux-amd64-glibc2.35.zip"
      sha256 "cec2a0d03b960a2de0b8e76b24510c872a4b30b114ed17b168ddc1be18f78815"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1511/cos-linux-arm64.zip"
      sha256 "840578eb47ae4aa4522f2fefd82fe8914c8ff8d41fdc317e7bbaa9d2f094e783"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
