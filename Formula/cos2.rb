# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1392"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1392/cos-darwin-arm64.zip"
      sha256 "74aa243138a14315f9463b62e51fee6cd43f99a08fec019f82e2b192b4fd7fc0"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1392/cos-linux-amd64-glibc2.35.zip"
      sha256 "fcc29310d9bac14165512b804d4d3def509c6313c76debed0e3e9667c11151cf"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1392/cos-linux-arm64.zip"
      sha256 "e233f643fc873d7a71c04072ead5359f2dacbf534bcd9a0f4359445c1b7f2345"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
