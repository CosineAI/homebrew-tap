# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1400"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1400/cos-darwin-arm64.zip"
      sha256 "61064eb85bdbdb4ab64437f54485cd9e2605dd2b4d3ad63734f791f047b7d636"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1400/cos-linux-amd64-glibc2.35.zip"
      sha256 "aca9dc84297e0eb860bc815dea6f7c426d4134a536bd02475a5a2a7e102f3720"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1400/cos-linux-arm64.zip"
      sha256 "1b9fe1ebe1fc74230ac781e1d6ccff05d656ef459d2ff0f63a88274872a0a904"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
