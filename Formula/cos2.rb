# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1370"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1370/cos-darwin-arm64.zip"
      sha256 "bd38707626b81c6ee224f479a0bb9c32f0196916e1330ab324a77bb65d51a7e0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1370/cos-linux-amd64-glibc2.35.zip"
      sha256 "534000c7ad537ab0df0685d058071ddba441359ecaf72adbd61a97371e7225e7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1370/cos-linux-arm64.zip"
      sha256 "4347c71804902c3ea2f9f289667af81c754b9ae2cf333ce64c5f0c09e43b24c3"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
