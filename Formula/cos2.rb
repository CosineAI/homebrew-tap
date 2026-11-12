# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1427"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1427/cos-darwin-arm64.zip"
      sha256 "b005068702181dc9fdfa595dfac13d0f1b3543c0e76e1c07d1f2f2cb88c9d121"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1427/cos-linux-amd64-glibc2.35.zip"
      sha256 "fc794a4f45dfe598747475caaba961e3e3a5c8ae76e082106b6850959c144269"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1427/cos-linux-arm64.zip"
      sha256 "d4b9e19de3696b44a6616d9a5b2a3d480684bf7801a0117943a728720715839a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
