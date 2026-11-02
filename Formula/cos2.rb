# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1362"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1362/cos-darwin-arm64.zip"
      sha256 "b33a574ff93592afce406eb756e1c4949961d71044c4ff96cf1bb5a75f99606e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1362/cos-linux-amd64-glibc2.35.zip"
      sha256 "5a8b6ea5333060daab3bef499a88f6d8ebee21a5da3a72c977d582262b9e6ee5"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1362/cos-linux-arm64.zip"
      sha256 "991189c3d45c980dc9a98918a1ac51f90fa0f0c1caabe182d6a1e3c28a6a5533"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
