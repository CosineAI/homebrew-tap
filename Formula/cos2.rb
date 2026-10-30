# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1355"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1355/cos-darwin-arm64.zip"
      sha256 "5e34d3f958f6969d2371ac9a1c315d7501b35bf95d84aee27fbc1215a4f8a43d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1355/cos-linux-amd64-glibc2.35.zip"
      sha256 "7d68b02a54d0a59cc1173f4659d493d8776162237f4f90a018f80e99d153843d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1355/cos-linux-arm64.zip"
      sha256 "2a63b9b9b4e6f19bd30628b65ab75b199bf92890a5f3838f97ffa1adf7b3a178"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
