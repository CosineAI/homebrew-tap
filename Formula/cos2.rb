# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1292"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1292/cos-darwin-amd64.zip"
      sha256 "36acb854ab83261aa721cd7ecd15662730e06a218709d35c7257909641b022f0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1292/cos-darwin-arm64.zip"
      sha256 "5b5e18b2bb9d3d2058149a154e0202fab2f5314a3c38f136f51ebd3c9f1b9572"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1292/cos-linux-amd64-glibc2.35.zip"
      sha256 "81308ca81164bd983a749211326c5977473acef4744ca4f25627dbe07139215d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1292/cos-linux-arm64.zip"
      sha256 "2092a231eb4bf7c993d9b2b090a7cc0858fbaf20a9e4f4f021fcf00c4bc52d35"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
