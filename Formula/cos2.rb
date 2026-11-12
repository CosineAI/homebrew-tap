# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1424"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1424/cos-darwin-arm64.zip"
      sha256 "8679d4aac7716f270d4cabd4378e4018d32d0439d2142873508815691774825b"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1424/cos-linux-amd64-glibc2.35.zip"
      sha256 "e88576987f76e96f4e6d73ffff21a4484e825235f756327d124bb52aa98ebc4d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1424/cos-linux-arm64.zip"
      sha256 "3bca364f67b4522fe98eb034b43cdab72171735d608b360723b54483674eff0d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
