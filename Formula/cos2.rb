# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1246"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1246/cos-darwin-amd64.zip"
      sha256 "f33643df532077b50c33983eebca13d7ac97337e0098b8e1eaa50e43265b11b8"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1246/cos-darwin-arm64.zip"
      sha256 "d5ba72795e10fac6c20b26e3bc304d34b6c754ca4e56f41edb565c6302731555"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1246/cos-linux-amd64-glibc2.35.zip"
      sha256 "e82a7183c19d777eb4547df13b292d400f82b5e2f93c376a8cb8df0a40ddf7d1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1246/cos-linux-arm64.zip"
      sha256 "de291314979b2b46d60046a02909fb1ea08e00e7118e941242d456236b81875f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
