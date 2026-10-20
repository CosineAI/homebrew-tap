# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1273"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1273/cos-darwin-amd64.zip"
      sha256 "bd2b0f664e06293410426cc34d5d5f2cfb3b570dc1bf9e66e47cf7b0fa95dac3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1273/cos-darwin-arm64.zip"
      sha256 "004d59b26817de75b738da87868aeb18458875ca492a8dfff7be8d857ba155f2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1273/cos-linux-amd64-glibc2.35.zip"
      sha256 "474f3226376555a0df1f4bf34a743260a706cad04f831e9dd3aa76cef28205e2"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1273/cos-linux-arm64.zip"
      sha256 "c51cec1086c7a4eb6127ecaa8b9155fe83529ec97a0e65ffaa7ede745868e462"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
