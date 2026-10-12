# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1247"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1247/cos-darwin-amd64.zip"
      sha256 "cac1f8120b952807ed8f0e7f32e34417f9c005877b86cb625816d7295ae0030d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1247/cos-darwin-arm64.zip"
      sha256 "55e34291a6caa7af31c6be6b4d17e15b70cca24d8ecdf105999153967a0c933c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1247/cos-linux-amd64-glibc2.35.zip"
      sha256 "952bb5861b3fe21acf5f11484be320b91cdd927d963c6b2be89cac50016ad779"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1247/cos-linux-arm64.zip"
      sha256 "d9458e57b08af917526fb4efd6274256b2e24786e797bbe3c3ec1735ec0adfa4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
