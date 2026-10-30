# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1349"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1349/cos-darwin-arm64.zip"
      sha256 "10ac84d54a54dc59738c4362f8d75552fce0543e712b489e457a3c0e831b0b8b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1349/cos-linux-amd64-glibc2.35.zip"
      sha256 "be6d9762e60044ad5b42b1e9c4b9fc40ab90b2da00cecb1ef8590d1d3fd90173"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1349/cos-linux-arm64.zip"
      sha256 "c52142253c8dada4fc65a665dc648d79f317941e19409f4e82593b536ed456d8"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
