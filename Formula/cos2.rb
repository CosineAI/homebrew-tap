# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1320"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1320/cos-darwin-arm64.zip"
      sha256 "d26365b6d91438040cff449e59d883316d2a2b8ff8a0fa79d0112c2ab5e12ee9"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1320/cos-linux-amd64-glibc2.35.zip"
      sha256 "a62d4b74c657d87ebe51e2c7c253d93007d2869f2bad8399137fe7b8a7babc09"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1320/cos-linux-arm64.zip"
      sha256 "6406d8ec0c28a1c9897285174f1a50d0d8c659ef2519480b9f43887f737342d0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
