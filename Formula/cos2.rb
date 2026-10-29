# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1337"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1337/cos-darwin-arm64.zip"
      sha256 "5572d393097889f161ee8704e7f0278ef9a9472b696963cdadc6a852f80e1d3f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1337/cos-linux-amd64-glibc2.35.zip"
      sha256 "b6c6ee9447619618abf562a8d8c874c59e6863eff505607e0b34c81c857fb8ce"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1337/cos-linux-arm64.zip"
      sha256 "6f459e6e0f80710461cfdef817701becc1c4744054ceaae6512a3e48f3d94dad"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
