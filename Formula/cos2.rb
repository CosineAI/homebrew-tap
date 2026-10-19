# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1267"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1267/cos-darwin-amd64.zip"
      sha256 "4301c862baa5924151491a4f318baf455679afe5bea9380dac1de57160f6a78d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1267/cos-darwin-arm64.zip"
      sha256 "9e7e7d0eb8c8553c41b525a7e0ff01890c0659896a8d4059d9769b3440b0b86e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1267/cos-linux-amd64-glibc2.35.zip"
      sha256 "20ea1f05fd1e8976d7267945c1a1cbd5ef8c896488acf6aeea86d4b2ba595e51"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1267/cos-linux-arm64.zip"
      sha256 "69f3f4c7a8379eeb350d4340ea5ef2bc9cce037aa86b19b9fa3cdcd3d3158470"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
