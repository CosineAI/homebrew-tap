# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1289"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1289/cos-darwin-amd64.zip"
      sha256 "a1bcf6c8d8901bb6f1b2795f2dd71deb0791bcded66d9aa3f6d728d3e1d17fc8"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1289/cos-darwin-arm64.zip"
      sha256 "a32149907e3bfeaf2d5f559490a280f2a9ade16b049befc43a6e49ba9c0e5127"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1289/cos-linux-amd64-glibc2.35.zip"
      sha256 "d4afbc14b2627fd1a2809109e60d6567356793d3d056c7d43825359b31e427a4"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1289/cos-linux-arm64.zip"
      sha256 "b14f59a4b7ddefcadc564b56c423bbf11130d725291130a9ddd87f771cd036d1"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
