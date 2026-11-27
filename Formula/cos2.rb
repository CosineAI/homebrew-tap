# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1522"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1522/cos-darwin-arm64.zip"
      sha256 "0d470c81af5bec1dbaad6c31c397888cedac2e34ef007e3523a6817cd829ff18"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1522/cos-linux-amd64-glibc2.35.zip"
      sha256 "685a1607a990f0e1effaf9d7cc1549d4d93c522282e4645a718ea5b3cbc46782"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1522/cos-linux-arm64.zip"
      sha256 "3ff67659fa0e833376f21532881dc751e02b5f4fa8e077df8b1240195ced46de"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
