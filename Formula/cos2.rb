# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1329"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1329/cos-darwin-arm64.zip"
      sha256 "97ccd56eb2159430fabe3e7fcce0eb51dcc06fcfef6896492eabc470b32c655a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1329/cos-linux-amd64-glibc2.35.zip"
      sha256 "35c0da061521b0a8ac54a75d02a203e91fd63478735d6ace3b49700d2d6765a0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1329/cos-linux-arm64.zip"
      sha256 "4f222fd496a666fceed313f512fd09e3c0547394fbaf3e74ee2779537b397ee4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
