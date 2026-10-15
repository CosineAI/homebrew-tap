# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1260"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1260/cos-darwin-amd64.zip"
      sha256 "ad9276614a2b26e3dad8dab1235391894508c0bb448f1a009ac47348ae8a75d6"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1260/cos-darwin-arm64.zip"
      sha256 "d75049b765eb965e71e838d89d7219bd84ca6e5d25560f0baf747e3f5777b0ff"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1260/cos-linux-amd64-glibc2.35.zip"
      sha256 "f42f7c4fa0b7acc2cff484cd1439bab3fb9bad8e3eeedbb8ab24cbd4acde991a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1260/cos-linux-arm64.zip"
      sha256 "2ae78948426a8961d08db8b27e9e0ccc833b239b1000901ccc68c43f9e7da272"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
