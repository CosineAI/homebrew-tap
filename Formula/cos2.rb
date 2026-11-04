# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1374"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1374/cos-darwin-arm64.zip"
      sha256 "1716e39bff199129e17b0c717992319a383ea94b577338da42cbcf2d760007e9"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1374/cos-linux-amd64-glibc2.35.zip"
      sha256 "803d26df817a3b2ed451a978569e409d086646a8b22b8196d19467a2074608de"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1374/cos-linux-arm64.zip"
      sha256 "fa3fb2031ba3acc6d82b8bafc96a5d34f1c3d2784d713b2d69a88536acfd6b49"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
