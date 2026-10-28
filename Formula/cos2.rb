# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1332"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1332/cos-darwin-arm64.zip"
      sha256 "e53e9cfb9f34ab8e9e534998e98ad12f6e0ece550cf2a2ccc712d33b6d8e3b4f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1332/cos-linux-amd64-glibc2.35.zip"
      sha256 "d80898179d6cd70860aa48484862be8f79aaf34a1c35b2ff224f9d93ffe6c66b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1332/cos-linux-arm64.zip"
      sha256 "b975ab610c8d4bdde02cfb4955d9bfb420e66123193d0b8956e17826ab548167"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
