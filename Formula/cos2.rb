# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1453"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1453/cos-darwin-arm64.zip"
      sha256 "6f2411166b08b52371e49cf7afbd3883b6976d0bfcb285ddf273da079732c0a4"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1453/cos-linux-amd64-glibc2.35.zip"
      sha256 "8348be63c478410c91b919b7f2be0a239f23630f06be68c5de51042d477b3cef"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1453/cos-linux-arm64.zip"
      sha256 "c7c7569adec2508f39bc927a8fd71d6ffba975fd8dd504895da4d91291b78c1c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
