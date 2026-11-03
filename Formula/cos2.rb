# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1371"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1371/cos-darwin-arm64.zip"
      sha256 "3354d5fb89a850d2c8496afb90730a4376a7627d233a8c4c2f19c58963009f20"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1371/cos-linux-amd64-glibc2.35.zip"
      sha256 "4f81386e1bdb38b1a1394f4f6f63a2bd0b5a2ea86e6a3abd61ff22fab086caeb"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1371/cos-linux-arm64.zip"
      sha256 "f8cd3a25ec26408187e029020ba4b61b9373c37ddc6fa481b1f57792ddbeed88"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
