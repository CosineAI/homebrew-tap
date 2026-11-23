# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1481"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1481/cos-darwin-arm64.zip"
      sha256 "ffd61da4fe324388b29c9299ff93e23791c1013732b8ada1a33a1d60c30e8a6f"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1481/cos-linux-amd64-glibc2.35.zip"
      sha256 "2a6f33d36082e22b225ad4c84e9e6d85e5a72079cdd2d15c18e2d0e4ba2a3d1f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1481/cos-linux-arm64.zip"
      sha256 "1b6443629166a528e7af9fc5b9d4083b32a9353aae3f62f0dda3bad5b64df7c0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
