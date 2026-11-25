# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1505"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1505/cos-darwin-arm64.zip"
      sha256 "0b6d12492a216db712b6d0a4d2e97ad26c1815d995c5a8975902ba5df2e10d6a"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1505/cos-linux-amd64-glibc2.35.zip"
      sha256 "8f55474aa66aef0fbb6507f19b93f6d92a2ab2cb9bbb31fe7a787dbd155678ca"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1505/cos-linux-arm64.zip"
      sha256 "08d21d7e851043b814a9892cfa010c841eb730835ff482b9f549ea67f0c022d2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
