# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1274"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1274/cos-darwin-amd64.zip"
      sha256 "0d5e3f913c344473ba4898a66e5064457d877bb4252d9fb48aef7cd2f4a75c6f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1274/cos-darwin-arm64.zip"
      sha256 "15f9cdb7d14f8efb2749080c656513db7472eb004e1484dd2a963b436d47274f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1274/cos-linux-amd64-glibc2.35.zip"
      sha256 "915d9a2d2ae8259d844cbd6db700fde2b704f410b6753b7fc0861d8e358269c4"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1274/cos-linux-arm64.zip"
      sha256 "9857f12602525421aad6f5512db0633e2e76355b85e071c1ae2022caae7f2087"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
