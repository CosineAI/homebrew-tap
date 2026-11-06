# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1396"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1396/cos-darwin-arm64.zip"
      sha256 "2c77f2b907f01dc5f6fc20dda0a160e1d1187b5c0224c103af813d895f4811c6"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1396/cos-linux-amd64-glibc2.35.zip"
      sha256 "ef448fd9900a059f26b3ef08382f0fa7459e9ede7aa8b0b7e9adc11316fa9c2d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1396/cos-linux-arm64.zip"
      sha256 "6cf73e0d52ca294a9aae0dadbdea79da289b214c251965b180a5389fd36eb52e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
