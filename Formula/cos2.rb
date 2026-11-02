# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1365"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1365/cos-darwin-arm64.zip"
      sha256 "103e5ecf01374674cb33361fd93a5f664b2ddda7ed175f32446ea74798daf84e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1365/cos-linux-amd64-glibc2.35.zip"
      sha256 "9d2fce3e9ed4626dfc992f8d18a6d4f06b747e83286f1cf002b34690295bcb42"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1365/cos-linux-arm64.zip"
      sha256 "52b39250e4f6312b233fe5c31ab63ef7855ee9f291861b4af9940abe6d075e83"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
