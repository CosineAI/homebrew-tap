# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1415"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1415/cos-darwin-arm64.zip"
      sha256 "647ebbc6593c057266ed11d9ae6a731cd5b595e1554659f9ed392bbfadb3d006"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1415/cos-linux-amd64-glibc2.35.zip"
      sha256 "c2ce42d44ec2aa9a17440655e6c54c0457b87c82a6ed1d8bec8f62c635ad8d4e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1415/cos-linux-arm64.zip"
      sha256 "6ee6790a79f2065d31823ce3195a64009988db2f2d0d103ff1fc5bceb025d902"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
