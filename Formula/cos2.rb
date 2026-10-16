# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1264"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1264/cos-darwin-amd64.zip"
      sha256 "1c21941772eeade4917f0aa7972bdc173b333a6a713447c650a145d81d25e86c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1264/cos-darwin-arm64.zip"
      sha256 "957c0fc16c72745ac40b617919f24504c28d1b3a6c5eb5bf283c0be5ddc95b73"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1264/cos-linux-amd64-glibc2.35.zip"
      sha256 "805a44ffad3039cacbdf7818159b3da1f88a4e3ba3b218a17f9000dd9ba786e0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1264/cos-linux-arm64.zip"
      sha256 "b43c8e855afa28d4a55d61993999d7f4b6b02712be923f3822b159a51a114629"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
