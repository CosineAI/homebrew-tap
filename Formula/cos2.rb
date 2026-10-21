# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1286"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1286/cos-darwin-amd64.zip"
      sha256 "db429c5a200b2b7f7b5547963fdc23dd54ee0ffd5f7ed9e0917feb02d6a360c1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1286/cos-darwin-arm64.zip"
      sha256 "d37893c36a3d94394dfc7a46eb54ffd3587876eeb1089c853c03aba18f7c80fa"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1286/cos-linux-amd64-glibc2.35.zip"
      sha256 "f68bd4105d3da4e269c7e0f24cb72260df1a76a12e084a55bad48f6d76f393a6"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1286/cos-linux-arm64.zip"
      sha256 "69153b301889a7af11394355c6e4a4b22b165bad8eaf78b0f0d54d62a3f0871e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
