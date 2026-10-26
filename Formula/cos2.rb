# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1309"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1309/cos-darwin-amd64.zip"
      sha256 "b1547919021a235467a17e37411bcf31989de7152a749e9b24c81ae8e0f154ba"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1309/cos-darwin-arm64.zip"
      sha256 "42373b9fd03989acf9d9d0b8659327f1f4a3cdee8d66dfd7c36d2d9e3337501a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1309/cos-linux-amd64-glibc2.35.zip"
      sha256 "6323e9367429f63e938d356abf399c65e362c7bdfe99b9cac41b6429144f9562"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1309/cos-linux-arm64.zip"
      sha256 "fb2d8ec9a1bbc6e167720edb515f72d8671db58797c00f03a33645b6d4e7cc28"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
