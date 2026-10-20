# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1278"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1278/cos-darwin-amd64.zip"
      sha256 "036f39b1f37bbd762ec944c52a1c35acfa8bbbe2fa20a1838e3af30d42c4c277"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1278/cos-darwin-arm64.zip"
      sha256 "4592919229793021c6a89bf7b61b9e78703a080a37bc822835791f6746f0b90c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1278/cos-linux-amd64-glibc2.35.zip"
      sha256 "1ae7dd3869c1824ae0e07ac87d72e01d5ae196376129257f606cbf80f14464a9"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1278/cos-linux-arm64.zip"
      sha256 "c16adc2ff339fe4279804a26f753979ff63f439ada5195103e0a7e169a578b7c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
