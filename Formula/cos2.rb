# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1471"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1471/cos-darwin-arm64.zip"
      sha256 "e974a9ef38f09dbf3af4d3e0e6169875b112b658aa4cdc3a59b4d23f89e5d31a"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1471/cos-linux-amd64-glibc2.35.zip"
      sha256 "c5af3c0ff1796d2072517af1905296a04258c38bcd04c4b2ba31a7f5fabe501f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1471/cos-linux-arm64.zip"
      sha256 "5ad5cd041eabae1928180fe385f5868d26b515628f18af17daf9ad8dc28fa608"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
