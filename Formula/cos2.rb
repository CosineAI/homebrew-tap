# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1230"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1230/cos-darwin-amd64.zip"
      sha256 "bf87863b78c4eb842edc7df3424a1c08d6e3fb48999f9b4960c273a014255444"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1230/cos-darwin-arm64.zip"
      sha256 "4ae5cd5dfeb6e7da19e1ef48ad20372595b74ed4a4a0e91ba86671b33138c996"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1230/cos-linux-amd64-glibc2.35.zip"
      sha256 "8add0fe0799849dd483357d40a9a24387b311b8f855cf226cbb2e9e97ceac05a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1230/cos-linux-arm64.zip"
      sha256 "f615336b774c8082fd2124f97bcecc24b7b147219614a54d1a220ffff11026e0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
