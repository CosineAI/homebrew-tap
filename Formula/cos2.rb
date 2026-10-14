# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1251"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1251/cos-darwin-amd64.zip"
      sha256 "63a459e7cdf6df421e0c9b67cbab64330c14504c93e493881378f1ef08cef5b6"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1251/cos-darwin-arm64.zip"
      sha256 "f8b223ccc341009497c523739e63dc70b0dc01e46c6dbeb208e05cc190d456ae"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1251/cos-linux-amd64-glibc2.35.zip"
      sha256 "81b3d5238be04f82092ecda7f74968534c1321a383544c65b1cd142703753741"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1251/cos-linux-arm64.zip"
      sha256 "0b2c209cae56521750bf24d0bb65f5a3f46098dcc1048d5ea44aa17f05de3afe"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
