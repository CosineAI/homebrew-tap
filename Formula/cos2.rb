# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1215"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1215/cos-darwin-amd64.zip"
      sha256 "c61c86f2e9d0f16e52fb6ba23fd5f0a9379d42f1be21c7a0fa2fa575fc8bef2d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1215/cos-darwin-arm64.zip"
      sha256 "9b60f246620c7a3632f23d98be5440d920f56b62f165b267b6a5416906c5dffb"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1215/cos-linux-amd64-glibc2.35.zip"
      sha256 "257e383da790405a7c4890537b2164cd74309b497bc6c0f70f5af6b65a81fdb5"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1215/cos-linux-arm64.zip"
      sha256 "883a64e1a3ce735c57f5547b8f8c95873babd94a3386be262d06876b08689218"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
