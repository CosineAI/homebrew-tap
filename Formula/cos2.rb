# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1279"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1279/cos-darwin-amd64.zip"
      sha256 "89368fc93b34ff21884d0d9244fb060abe61a336add25f956392a89374339c1a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1279/cos-darwin-arm64.zip"
      sha256 "e7a85b40c7d8c87505a9e65b8263a6b741a5aa0f2d15d8daeed74a4dced7aa86"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1279/cos-linux-amd64-glibc2.35.zip"
      sha256 "2d1321a9617f5c20fb5e01e221f040d700200fc9ed890e0f3674d7306efa1880"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1279/cos-linux-arm64.zip"
      sha256 "6d484245d628bfbfb9a7e609c0392a5b3aecb7d3ce7880f7999d94cfb21a0713"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
