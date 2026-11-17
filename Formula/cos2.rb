# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1447"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1447/cos-darwin-arm64.zip"
      sha256 "3d34bcd78d77c868fe824fe9a3bd4233b1864d192a0fe925e02607461583bcd2"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1447/cos-linux-amd64-glibc2.35.zip"
      sha256 "daa7543b545167f6a20e14355d58ce5d450ecdc86244f9b9079981ef5441cc1d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1447/cos-linux-arm64.zip"
      sha256 "ef1e7ecd339e627cfcd747d85eb6363662893f4143480ba2e7c119a1b65e00c2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
