# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1492"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1492/cos-darwin-arm64.zip"
      sha256 "c699cbb4ee49dbe1813e26825df927b2afd56a3fa53148cf9720dcc78d5b2d65"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1492/cos-linux-amd64-glibc2.35.zip"
      sha256 "d911696b8d0e46a67d119ff26e482bfde12c364be56a1457ba99b850a2306abe"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1492/cos-linux-arm64.zip"
      sha256 "9acdfe325f617a8c220ba9385c69f3a9f20fd353a2cf7b3e9d2a067d12451f3a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
