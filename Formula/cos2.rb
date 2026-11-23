# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1484"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1484/cos-darwin-arm64.zip"
      sha256 "55f8faa637a35d9bff6ec6d34dd3d368bcadb187b0a873d0397574330adf8f4c"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1484/cos-linux-amd64-glibc2.35.zip"
      sha256 "85ad4a51c9b880c6ed9355d70ad5732b8264a5224d1ba4f4d175fcd7e8804df8"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1484/cos-linux-arm64.zip"
      sha256 "bdb858f65d72b8f314e7e821f39ea6f5bbef04722979a3785e3f4ccf9f7f7306"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
