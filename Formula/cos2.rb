# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1380"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1380/cos-darwin-arm64.zip"
      sha256 "ddbdee0cd02c070b9089c3063ca0d4659ac590c8ae51ef0aa6a8cd86d408d84c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1380/cos-linux-amd64-glibc2.35.zip"
      sha256 "6e97b647c2f820d26a0b4f937922f9c1a3fd8ffe463e35a718f1ad683617703b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1380/cos-linux-arm64.zip"
      sha256 "9d7ecfb3e9a951f8f274b7d84d4df0cf6e7a67e0e8c5f8799b466fad98fc1818"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
