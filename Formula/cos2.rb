# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1483"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1483/cos-darwin-arm64.zip"
      sha256 "f2d15af88ade511e80b7eba25ef7b7c9898a7a5b5d36dae47543e6f34e9b45d6"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1483/cos-linux-amd64-glibc2.35.zip"
      sha256 "00f39d17ec452f7491a859801279fd8ba99dc9102043913255025e60d7e4d7b9"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1483/cos-linux-arm64.zip"
      sha256 "b34796c8a452d7922ec7ee1b6d13569201c48293fc1356de9506e31e1f554361"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
