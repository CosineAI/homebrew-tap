# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1369"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1369/cos-darwin-arm64.zip"
      sha256 "fac319b24093b02d8b4d3e48c9c705e2fdf0d00e3b05efe7e55a8529bc9c47dd"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1369/cos-linux-amd64-glibc2.35.zip"
      sha256 "f02baf0a9f7591101797007675adad4e5df06d89cb6d050b626e981e11a451a4"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1369/cos-linux-arm64.zip"
      sha256 "828459c0f873e88d038dfa0d68fb22d440d02debceca93f94fa5500ca7972df6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
