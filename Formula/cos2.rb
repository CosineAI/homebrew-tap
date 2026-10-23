# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1300"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1300/cos-darwin-amd64.zip"
      sha256 "58e37f5294feb2a7da4d3db0b54b1bf088c50681e40fac58318cb31aeb850b48"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1300/cos-darwin-arm64.zip"
      sha256 "5607223a320420a68239f27e7a971c0385eb1c6ee276b9faa368b1f861582ebb"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1300/cos-linux-amd64-glibc2.35.zip"
      sha256 "92faf0d8cb906b426198582fb49cb1188c1f316fd07853cff91463ee9c34ee6e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1300/cos-linux-arm64.zip"
      sha256 "b7d1f22bd85079d3143656ae804a9e625a478f7d85de439750423be23a9f000c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
