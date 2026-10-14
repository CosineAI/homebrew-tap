# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1250"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1250/cos-darwin-amd64.zip"
      sha256 "4064e955b446e089f5057c72cd6ca938c1d4d1c8ed45bca29526d6297cddc7a5"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1250/cos-darwin-arm64.zip"
      sha256 "a83baa5afd4680194a3bcd9343f7238e1c44b8af33631920b2afe71be74cd919"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1250/cos-linux-amd64-glibc2.35.zip"
      sha256 "f71f3e6be89cf295b68a066803fe2544710ce920eff2ff576677eb42b7e267be"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1250/cos-linux-arm64.zip"
      sha256 "b81376f88c4c1268f201775f100bfab982df05b7176fdd8c886248d86e0ef689"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
