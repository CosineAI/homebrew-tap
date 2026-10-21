# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1283"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1283/cos-darwin-amd64.zip"
      sha256 "2773f4350001afd23f5fdd004cc718ca789f3d2d3df3cb7489e8cd2a6a931390"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1283/cos-darwin-arm64.zip"
      sha256 "bff52c0e70d6ddf68274332af24e3ae9cbd662fa9166db312123df5cfe2307f0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1283/cos-linux-amd64-glibc2.35.zip"
      sha256 "382fba39e39e52137af4f90c7531576ebe62a687bbc86d0dbb9118fb5ad751ed"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1283/cos-linux-arm64.zip"
      sha256 "14dcdaf6bbe59c961ced8704f09827b30ae690cc27052c01b9cf9add157f7372"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
