# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1482"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1482/cos-darwin-arm64.zip"
      sha256 "994153837c9b482522581032e319220e60783bdd5668fc7f6a8bd306280066ca"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1482/cos-linux-amd64-glibc2.35.zip"
      sha256 "857d4c205a1e1c81c866cca0cd4fbea5c87fc8faff3d933e7af1fd078e037455"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1482/cos-linux-arm64.zip"
      sha256 "ccc7889520a71d7d373a9ba657804c4589ae50b9ebd16199afe38a263569c2de"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
