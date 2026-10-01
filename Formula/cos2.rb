# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1217"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1217/cos-darwin-amd64.zip"
      sha256 "6cd5c06dea0c0b3ba242d64422bddff4c61c0ea444fdea9b09653488505a6980"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1217/cos-darwin-arm64.zip"
      sha256 "d5325acb0e1c2df146b154fb0beba3ba1bc56927ae6b21c1cefe3995522abfda"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1217/cos-linux-amd64-glibc2.35.zip"
      sha256 "4258b322e26ae5873e70ac75fcf6af92ded9e1c3e8fc9e2ac036aaafa2d4c838"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1217/cos-linux-arm64.zip"
      sha256 "3b0cf94e83946f11a4a49e04d2d2f622957622fdeaaf2c5fae46a7a80212de0a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
