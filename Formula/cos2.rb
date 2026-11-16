# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1440"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1440/cos-darwin-arm64.zip"
      sha256 "d57c2330669bba91d7b4a94165d73a44aec24c4d025704659d7f38e3c5c76268"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1440/cos-linux-amd64-glibc2.35.zip"
      sha256 "d04c75f822a2ebbc09c8d104d81a4c66b1ea2a4497a5ffb8eb5b73ab792feb20"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1440/cos-linux-arm64.zip"
      sha256 "b445fcaf4600cece86d19df2244a327b466423868158b96514d8b07c6e3a242e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
