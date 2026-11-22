# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1478"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1478/cos-darwin-arm64.zip"
      sha256 "087ecc9d362cea0e66b6dba3d47bc25d5da1c557e7cf4fc480577db0593a620b"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1478/cos-linux-amd64-glibc2.35.zip"
      sha256 "01a8413c59308a4f58eab28ab11b846b7c75344badced6539a659c9d311ce343"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1478/cos-linux-arm64.zip"
      sha256 "24fe098456e47ac1cb59c98edc041d0e40cc06e692039591141d510ec8f67da8"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
