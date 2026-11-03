# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1367"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1367/cos-darwin-arm64.zip"
      sha256 "59c0750fc8df4e38268ecba0ea7a4617327ccb094b71a8b3e7edad290e07c7e4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1367/cos-linux-amd64-glibc2.35.zip"
      sha256 "1c47a8218464a18c5bcbdd70911be2906b574aa5161d5b5582728f1794d7f72a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1367/cos-linux-arm64.zip"
      sha256 "3c15e590949f5492997509cf166d6509579a54850b299d9cc601db4b2019b4c7"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
