# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1441"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1441/cos-darwin-arm64.zip"
      sha256 "0c6874594e724476d7220a0f736ad7e3617d14f285579c7fcc30038f751abc6d"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1441/cos-linux-amd64-glibc2.35.zip"
      sha256 "62bd052fadde8ed656494e74b1319c7c9c9f994f979b850b0a50ca7f2e2f21fe"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1441/cos-linux-arm64.zip"
      sha256 "b0b9798449d83efe8521e7ea8a6be671f0cc3d60e309d2caccbfb73470405fc1"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
