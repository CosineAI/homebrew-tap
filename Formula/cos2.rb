# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1408"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1408/cos-darwin-arm64.zip"
      sha256 "8e236c1b500b83cc60a008c71978f717d40b9b2a72d7aba77c1d5f8b66750d7f"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1408/cos-linux-amd64-glibc2.35.zip"
      sha256 "718634c01e3b08323b5d66c6746eef60609c58dfc8b7cc26f420369aed99d52d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1408/cos-linux-arm64.zip"
      sha256 "568da23144c23a5a42714bad610863a41a11837e5132771b714b3748b6ecb483"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
