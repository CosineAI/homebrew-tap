# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1504"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1504/cos-darwin-arm64.zip"
      sha256 "474e8f2878ff75162eeb890813203f04525ef4de0dacf502cf28f7c1d58fd15e"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1504/cos-linux-amd64-glibc2.35.zip"
      sha256 "1128954a004c0a6f8ff386fc128d641a3bf2a687cc78967d18dc360a26dd2c9b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1504/cos-linux-arm64.zip"
      sha256 "0ffe9825835d10098540e976527545a975a1788f37bf33201bc5360326639ab6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
