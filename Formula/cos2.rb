# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1407"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1407/cos-darwin-arm64.zip"
      sha256 "6a173871d2e228038f032b4ac259169d8bec2dfe39cd408502d64ffeacb13121"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1407/cos-linux-amd64-glibc2.35.zip"
      sha256 "cdfb2d5c0a4339af3cf8446e5ec91570fd5fe5fa464e1b3c83ab97b73fa97407"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1407/cos-linux-arm64.zip"
      sha256 "56ae4a93d2f66c5a9266f42e1bac4037dce3a020570023b5a1f1cf4d17505ba7"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
