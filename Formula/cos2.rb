# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1381"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1381/cos-darwin-arm64.zip"
      sha256 "43aff7b21c30769945c12f187ad36ea15dc434e79815c6dbd58404cd9e41ca2a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1381/cos-linux-amd64-glibc2.35.zip"
      sha256 "19c414c8b202ea5da0ce30ede8297f2f8e5e751884257478c61a9bbf513bacae"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1381/cos-linux-arm64.zip"
      sha256 "b9ea0b00ca0e05a189b64fa32cfc6a3f4db3e905129222fab384e6a26f5b8cad"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
