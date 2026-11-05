# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1390"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1390/cos-darwin-arm64.zip"
      sha256 "4bd480f4004588e2104391130b4ca86a16a628dd4a3f5e982c33518106b8ed6a"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1390/cos-linux-amd64-glibc2.35.zip"
      sha256 "e4efd60ebb6faf8c682d8cc74cb49d9cc31339c40a3e44eb84933fb43c10e39c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1390/cos-linux-arm64.zip"
      sha256 "21293efec6d92e5e9283f770e5b6c048305f941b650117b5720810f32a67faf9"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
