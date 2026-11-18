# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1449"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1449/cos-darwin-arm64.zip"
      sha256 "c5afdc40be932e0189ff9e652918659344396d9efcaf3a49d08164c4dd5beff6"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1449/cos-linux-amd64-glibc2.35.zip"
      sha256 "56d0afe374d2a31c859855c4fba2c6412772fbeee9abda63fcb401d190baf41b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1449/cos-linux-arm64.zip"
      sha256 "90f24a09103a414e9da271aeee943b454618f3336de7b6727b889e62ad7e89b5"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
