# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1335"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1335/cos-darwin-arm64.zip"
      sha256 "f25c06eeb33878966fd3d56cf97456b82199f6bc99534e7ac84dd39c346e083f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1335/cos-linux-amd64-glibc2.35.zip"
      sha256 "29e0459b1cf48f7acce2a93fd7a5cf66c7d138fa0741b3eefa47f181ae846f3b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1335/cos-linux-arm64.zip"
      sha256 "861b836627e0e8f2aef294b5e06d2048aad087972c3d67cbcb386733da1e3913"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
