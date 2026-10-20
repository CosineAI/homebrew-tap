# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1280"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1280/cos-darwin-amd64.zip"
      sha256 "3ed8f86e52d8daab95134162262d6a262d6ac0dea55b701904ddf31881062148"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1280/cos-darwin-arm64.zip"
      sha256 "071aa2ab3012a9cdacfe8fdc4c4400583d1dd9e6ed90659a77a41c0dda3baf95"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1280/cos-linux-amd64-glibc2.35.zip"
      sha256 "06872ffc7e603207ae1e7f73e97c7d21dd833171321eabc87a2fa3de4bdfbfd4"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1280/cos-linux-arm64.zip"
      sha256 "68ee28eb14618c4d181a53b8ed8048183abe5020c9dbad1643012cdd7e454e26"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
