# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1356"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1356/cos-darwin-arm64.zip"
      sha256 "e758358bbed583c61f4ac48c98d034d384d61b9b8d3df9894e1b3149bdcdd47c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1356/cos-linux-amd64-glibc2.35.zip"
      sha256 "4e3577e8ea780e462be080a1e20fc97e5e125162c2dc10054381f91bdaff1f73"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1356/cos-linux-arm64.zip"
      sha256 "5d034fa2a76c642e55bfbb4885a4b38c15891802e97c59f603c86bb0fdab5af2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
