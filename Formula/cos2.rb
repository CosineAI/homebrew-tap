# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1444"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1444/cos-darwin-arm64.zip"
      sha256 "90211bd335aeacc60e478e91f79f84417de0ccdd88ef3dafdaf3c7a006ca7c88"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1444/cos-linux-amd64-glibc2.35.zip"
      sha256 "2bb620839f1235b163768faa60d0fe0b4d279d5856647dc9c6d7166af6f9a717"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1444/cos-linux-arm64.zip"
      sha256 "0bdfc4c2c5a01361f0aba4342fad526f4cfd94dc125897bd5c4cd8e44bbdfd2b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
