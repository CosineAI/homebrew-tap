# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1450"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1450/cos-darwin-arm64.zip"
      sha256 "d37d10540ac598e86c729a157def185d0f32328bf1abf4d38610a6211cb1c1b9"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1450/cos-linux-amd64-glibc2.35.zip"
      sha256 "000f044a1fdd235e20c84dc2bd708dc68eba30ced845f1a92e7273d4d79e8b59"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1450/cos-linux-arm64.zip"
      sha256 "7d540216f43dd7cf8e316ec415d0fdd85b09d987fcb51ab437af8191499a39bd"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
