# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1413"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1413/cos-darwin-arm64.zip"
      sha256 "2ba51f50cd74c6d3ad02c90bb11650232adc1732c2ce1b0600bc716e7b6ae2bf"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1413/cos-linux-amd64-glibc2.35.zip"
      sha256 "23b479342f553523e790694c4a8b882837017253c24c36326c24784de6f85eaf"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1413/cos-linux-arm64.zip"
      sha256 "7d05793ae08c7596a299be5cb50370fd82f6c17322ca8dc21c0988c73b1fd8b0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
