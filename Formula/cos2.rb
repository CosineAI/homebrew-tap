# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1497"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1497/cos-darwin-arm64.zip"
      sha256 "5c237fd298a88eeab8c358cac8ff44c9b0077922d14cd59c0e2f77de31b8968e"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1497/cos-linux-amd64-glibc2.35.zip"
      sha256 "0969f97ec98f54799ac986b9a734d307c316fc2076cc574a02eba89d0fea8010"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1497/cos-linux-arm64.zip"
      sha256 "07b29e13484fc177e76278f54be8d43b932a9ad25200764463d67657bfd1ff37"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
