# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1503"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1503/cos-darwin-arm64.zip"
      sha256 "fb924f5b2d95960df0682436e6be7cf32ef8389b889fa8aa4f3fa32ea88a0ecf"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1503/cos-linux-amd64-glibc2.35.zip"
      sha256 "c66c0104e1d0ad19546aef4d35bef82b52801fcf098665942f6c205b0ec83e2d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1503/cos-linux-arm64.zip"
      sha256 "6e50361a309f0aa4a4bb806afa00b232cad353d0debf64b2d86b56c41dba5468"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
