# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1323"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1323/cos-darwin-arm64.zip"
      sha256 "bff92d789d6029ccc08d640a7107b8971ad4b27685e7aca25fe68e8e2c7d7e29"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1323/cos-linux-amd64-glibc2.35.zip"
      sha256 "e63c121ff46139f350937d91ec6a34459dd4bb675d292e667c6945f619196c2d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1323/cos-linux-arm64.zip"
      sha256 "bd8809e9ce7d88cd57dfcdf212fc075563f72222d3b9f17d42ca5099cd817dc6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
