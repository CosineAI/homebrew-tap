# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1439"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1439/cos-darwin-arm64.zip"
      sha256 "057e67c4fde51ffeea0f354e9535000e8b41323a25a749c184c5c1862ce6898d"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1439/cos-linux-amd64-glibc2.35.zip"
      sha256 "23f9b6307275e919f1646f101d6c1b6fa7419f4b5997371a408d098c403bfaad"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1439/cos-linux-arm64.zip"
      sha256 "fe9980cbc3f10a004c962bcd805661c0876cbc58383fd5fd11dcedf53623aa72"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
