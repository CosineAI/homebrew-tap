# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1520"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1520/cos-darwin-arm64.zip"
      sha256 "e7529b42c152b0f00f8034f2b5a5af5400641cb3175cbaeea79fa222f0f9c4cc"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1520/cos-linux-amd64-glibc2.35.zip"
      sha256 "f9acbe9308a3a32c3023c3b02b6f687c45fdb3aa453887eff5cf4e89cbe44045"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1520/cos-linux-arm64.zip"
      sha256 "f850a11c4b7c9f17070f340c9f36c8fcb3b6c4d7450d2bf3b0ff8e4113aa39b4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
