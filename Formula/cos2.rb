# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1438"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1438/cos-darwin-arm64.zip"
      sha256 "6948156df86188b1389f7ec2d1516e8e13aedc08f49bc33f50109f1dc3481fb0"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1438/cos-linux-amd64-glibc2.35.zip"
      sha256 "d0307c5fc4b36ce4a1fd3e912ace6c6703fbb48eb38ee0036363f08aa51dba4f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1438/cos-linux-arm64.zip"
      sha256 "a0c51673e3c757df469709d359e97f7fa9b2bfabf3e2f43e747407bd6e0160b8"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
