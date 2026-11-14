# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1437"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1437/cos-darwin-arm64.zip"
      sha256 "046bb6679c427ae89db3646137488e4f3143e7afb9d8d7983e02d18d2fd5094f"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1437/cos-linux-amd64-glibc2.35.zip"
      sha256 "1dca1ba8bbc5a045394d1e63316dcf1590bced1df36527d3f27223d337836a1c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1437/cos-linux-arm64.zip"
      sha256 "145fffb7e46160ae3fdc396f04a94dc33768bd73e654d2f18080a31db54f9ce2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
