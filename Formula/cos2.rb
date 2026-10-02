# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1225"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1225/cos-darwin-amd64.zip"
      sha256 "b2a73e404f8a0f7a1becd8d49dc52d0676111e33d9b631012fb9bc3e2fdad01c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1225/cos-darwin-arm64.zip"
      sha256 "065ea54df1a1fcf03a57271675a67fc6dfa6c2656e2fec7e5f2f94100e9dec33"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1225/cos-linux-amd64-glibc2.35.zip"
      sha256 "f7023576f0368c9690533ef76f63a7dcd8a5e7547c0058d13579e1f8af8cc674"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1225/cos-linux-arm64.zip"
      sha256 "6b84984c66b0b5a63bb907f0c2cfc63991822b895571d7fba098697ca9874c8a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
