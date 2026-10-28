# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1331"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1331/cos-darwin-arm64.zip"
      sha256 "267ea686be17f9b6b508274daf5601732ea52d0b9a2b110a8ee87f224273164a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1331/cos-linux-amd64-glibc2.35.zip"
      sha256 "9d7e0ac28e60cd35c5bb79dec5b8246571d2f95a29cb63223ef133b71a4b0c56"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1331/cos-linux-arm64.zip"
      sha256 "a526d9502c292546795f051845783a6bc246a0e532167c69e94b25c02d7ae4df"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
