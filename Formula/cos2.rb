# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1403"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1403/cos-darwin-arm64.zip"
      sha256 "1e5e69f9b67a0f08d1a6d4563ebbc06b624ba3fb8d00f5e7c78157ebadbdd48e"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1403/cos-linux-amd64-glibc2.35.zip"
      sha256 "1e0e8e27e827036fbc805819c8b79a496ab70a182cc36c1a0bc25fb7ef68f0e6"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1403/cos-linux-arm64.zip"
      sha256 "daa57e4c2cc6d41a932f3ea155eb158870871ee1dc73e8acae08957c81f1a149"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
