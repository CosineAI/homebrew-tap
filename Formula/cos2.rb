# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1252"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1252/cos-darwin-amd64.zip"
      sha256 "b96b2d03c96fbab4ed95b90940dc313dc8dae9c691bb2a39b30450ce92fdb6be"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1252/cos-darwin-arm64.zip"
      sha256 "b6afa8133a547c9a34e949986280a9043f2f74432fb319f371dc85ce3c87d526"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1252/cos-linux-amd64-glibc2.35.zip"
      sha256 "41c27ea0962c0a0f9da5d8723d695df3875c37b09f2438896dd7f62db679be1f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1252/cos-linux-arm64.zip"
      sha256 "96a1dc2e6486cb70409f9e636387b602748c8ed573b1280408ba6bb06ef2f21a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
