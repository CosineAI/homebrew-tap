# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1406"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1406/cos-darwin-arm64.zip"
      sha256 "05e52c827024df580c65eff6df3395418e1ba544928295d2a68f96761b4d5f4d"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1406/cos-linux-amd64-glibc2.35.zip"
      sha256 "27e9bfb8aa9195b5e415d9bf13e3a0d6601badd5f3cec8a74aaa98d983db1027"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1406/cos-linux-arm64.zip"
      sha256 "cdc7bafb25f4b9a5160e8785d044891b3534ff9af72b7adb81ead260d7793ad6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
