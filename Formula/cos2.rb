# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1281"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1281/cos-darwin-amd64.zip"
      sha256 "4d4bd02a05ee6ae6dc5d2fd056bf8f1942dd2972bd9d041fb6eb4993b1fd16fe"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1281/cos-darwin-arm64.zip"
      sha256 "695c1338c617da4044db7b5af4f620c2f78644b3d705396e005ebbdba0d3a74a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1281/cos-linux-amd64-glibc2.35.zip"
      sha256 "09f2099391e525e48ed58647f19e9b16b91430e9d8982d5115698bdf43fbc7a3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1281/cos-linux-arm64.zip"
      sha256 "02f5afa90e57de417b2b8432d1331243e4411b604cbdc378e75ae35913192576"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
