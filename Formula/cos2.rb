# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1405"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1405/cos-darwin-arm64.zip"
      sha256 "7e2e6d9f3d6b1b3f99502d649df680353b4a2141782e8d5f0db4d803c97d402c"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1405/cos-linux-amd64-glibc2.35.zip"
      sha256 "9cebfb52fc9a8ea557455984cb7900247f142e3ade2632674fa7f52b5ff9dca3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1405/cos-linux-arm64.zip"
      sha256 "7b252ccdf4120ddc646049f4c7589495d7c2b7be3427765bc0070293ed2dbf8c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
