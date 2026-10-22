# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1293"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1293/cos-darwin-amd64.zip"
      sha256 "a3aa33c28575b9fcb66e71778454d96e8a5ef1de1ce8f6f32bf876dca5410bc6"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1293/cos-darwin-arm64.zip"
      sha256 "fa0cf597eb448529f5af01b05037c78fe7b66ae4c2d63021afbe3c6f7688746b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1293/cos-linux-amd64-glibc2.35.zip"
      sha256 "1963ace170f9f09c040209aeac1754645728b83e2c92822d42c8be50047a0ac0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1293/cos-linux-arm64.zip"
      sha256 "7b62cbf7299a6617554deb85e66f3fafca57f2645c1bb9612905583314485ab0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
