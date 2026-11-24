# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1498"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1498/cos-darwin-arm64.zip"
      sha256 "13593148f04f7243e0f26846a438c18284ec128f9c289077bc29ab5e6fa9cbbf"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1498/cos-linux-amd64-glibc2.35.zip"
      sha256 "b76799c6080e811f2613bf9956070af73e4d09aad577704ebad47ca92d0c2bd7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1498/cos-linux-arm64.zip"
      sha256 "f215f2138998677729767d348c0905e981436c2e9df9c5f9783cad62308dd52d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
