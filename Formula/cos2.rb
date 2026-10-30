# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1359"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1359/cos-darwin-arm64.zip"
      sha256 "831eda3a9b0ddcd7e4ee5312a12a6895f26f37a1b21878229d080b36d3f9a3d3"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1359/cos-linux-amd64-glibc2.35.zip"
      sha256 "7c6d548534b092e45d63dad971d90ab191ca355a0a3f0426fb0aefc916f3d9db"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1359/cos-linux-arm64.zip"
      sha256 "9ad04d6035fe75ea5966d1131bed94fd9a09e7ed1e64a3be4d85abbca562bc16"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
