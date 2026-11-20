# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1473"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1473/cos-darwin-arm64.zip"
      sha256 "8cc619e778c797926a07a233a5b62837daf074421fe9b1d6003a5eb37b39d2be"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1473/cos-linux-amd64-glibc2.35.zip"
      sha256 "2be3d2cf24792e8906dba9eef88fbc7286e5fc98d41ebb30cda726439083d81c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1473/cos-linux-arm64.zip"
      sha256 "b0c85533391c3d44f1ed94eb5f16d8d57d8a53e11f1ba54143150ea0c1e60993"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
