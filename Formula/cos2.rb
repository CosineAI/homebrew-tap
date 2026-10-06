# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1231"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1231/cos-darwin-amd64.zip"
      sha256 "90178b9cae818d4cf225d75836a6052dfd3bd4e8aebb8312a11f9749f4f717a8"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1231/cos-darwin-arm64.zip"
      sha256 "e06bbcfdf3239853f01283eff2336207e001e15d33e420a6c8d7ff4acd5451c2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1231/cos-linux-amd64-glibc2.35.zip"
      sha256 "be0b3100486bbe624d9f3aa620dace5c91a581cde3a3dbbaaa1002c6a3cd5157"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1231/cos-linux-arm64.zip"
      sha256 "c6fe2beb432c0b92e736913daa1a625ebd2da8eee05e1377bdba0aef600e71a1"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
