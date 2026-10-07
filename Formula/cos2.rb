# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1239"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1239/cos-darwin-amd64.zip"
      sha256 "12783453100b507aa29ba8a6c0ad640406960b1f952286ffed4c668a22ec5574"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1239/cos-darwin-arm64.zip"
      sha256 "55880e0c468189cba2afec2815c6518291f87186161f3ce2140c0ef0529208fb"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1239/cos-linux-amd64-glibc2.35.zip"
      sha256 "e1e77df6ad141c9b2d06f4e89b61de7960b9d42e1d490c302dad33d35558cabc"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1239/cos-linux-arm64.zip"
      sha256 "a97a2736f16c89a8b74019b96a79d3630c474f45720f011be720ab0865ec8d7e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
