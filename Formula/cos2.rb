# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1248"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1248/cos-darwin-amd64.zip"
      sha256 "2586778635d3fb6198bd35e4374be6e808127d376bbe07c3f9d62e4305bb1735"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1248/cos-darwin-arm64.zip"
      sha256 "d1bc82d622f9c5f393834405b4a1c31afd1d0bb35e8bf4f724732e289c3f26b0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1248/cos-linux-amd64-glibc2.35.zip"
      sha256 "16eb1d360d8a3f51a44ebbae8507aecd34a44a263f26e3965a40f52072f6a38c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1248/cos-linux-arm64.zip"
      sha256 "afb84cad8cb5e2d91d55001fc38f9012f86d85cb72cd4a6ea4c805e479a426a9"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
