# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1470"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1470/cos-darwin-arm64.zip"
      sha256 "bf719094ac83daf514334e634fce7f1ced70a1861bdd8b677d890d3b0d5411c4"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1470/cos-linux-amd64-glibc2.35.zip"
      sha256 "350ab52aeb50e4c22d7acc9bac4870cf9085ac65a88698e2699d309d9926c8a3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1470/cos-linux-arm64.zip"
      sha256 "8557da4f519d8f83fb7bdfdfe917992f73a9d67a1727a1dac853ce321ec90481"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
