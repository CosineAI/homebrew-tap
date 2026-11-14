# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1436"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1436/cos-darwin-arm64.zip"
      sha256 "52449f0c7cc282f32d9bfdd3790e622d19af984604b71c1a9e667dbae2d18a1c"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1436/cos-linux-amd64-glibc2.35.zip"
      sha256 "fa9374f6ab50c62c154e2bca817a3c69dd9a35429177e39fffeb68ab9bc8dcf4"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1436/cos-linux-arm64.zip"
      sha256 "d1d937aec9643b518fa3dd4e93e5b6bd12b2c9db7986b70b8c9aad33c78e0114"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
