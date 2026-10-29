# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1342"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1342/cos-darwin-arm64.zip"
      sha256 "96c3e84f25ff8bd2c7952588fb470d6c663b1163d0981f5244fe2f8b10b5cb15"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1342/cos-linux-amd64-glibc2.35.zip"
      sha256 "e72b92ef8cb248cf09b38ca31b3a86f39473b915220eec1757d643723a699166"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1342/cos-linux-arm64.zip"
      sha256 "45584176364f37de294a148498dd55877c9677ab1621263149f7bb177c31b95c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
