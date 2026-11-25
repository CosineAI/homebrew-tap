# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1508"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1508/cos-darwin-arm64.zip"
      sha256 "d104e12b2905dadd058e0cfbc7deb13c7a0c4e86900ff15bf7fe873e7a0fb282"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1508/cos-linux-amd64-glibc2.35.zip"
      sha256 "ca61526f3a8066b7a822d7e48e41a885a161f13557481e64cbc15bc1d631bff7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1508/cos-linux-arm64.zip"
      sha256 "d1cd9af2e0908ec49918bbc1220e2e2129bea18f31d9679f744a306a31aa3f2b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
