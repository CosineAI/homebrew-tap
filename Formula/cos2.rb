# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1463"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1463/cos-darwin-arm64.zip"
      sha256 "81e978a224fd83203b626fccc464eb5295ba0e5a9bbf52f0c218fa82dbd0cb1f"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1463/cos-linux-amd64-glibc2.35.zip"
      sha256 "e3ce32fe37e3e380ec187b6ca9697c030665974e0be03929664c4156a00cd34b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1463/cos-linux-arm64.zip"
      sha256 "99da460a4c31d7124d718432f550a1ac88b5684584f31844c2110c9009e3b492"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
