# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1479"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1479/cos-darwin-arm64.zip"
      sha256 "6a96cca18d7f38e4193203d9077cb8715f6e6b736bafb56371865c47897d4826"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1479/cos-linux-amd64-glibc2.35.zip"
      sha256 "6d3c8322a5e0be34cf5edc93ee546021e5a1cd6e5968ecfb9275c7477f014de2"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1479/cos-linux-arm64.zip"
      sha256 "27ab29474e4243822a31b74ff1b44f8b10c21aeeeadc1362bd390a2ba5c199b8"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
