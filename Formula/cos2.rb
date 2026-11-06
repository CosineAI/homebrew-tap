# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1399"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1399/cos-darwin-arm64.zip"
      sha256 "ab2a803607ee6504b7d48abf57f23b055d3e9f43d5c57f24ef39f5416cbf527d"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1399/cos-linux-amd64-glibc2.35.zip"
      sha256 "80fa9d4ca36fa2e11a45d79d21e148711a6093b17019db69ce9016813c45a2f1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1399/cos-linux-arm64.zip"
      sha256 "07008fd58619ebd2856d93b052dd98675bbde2f58544ccd2bde7372311d519f6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
