# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1253"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1253/cos-darwin-amd64.zip"
      sha256 "5bb0a53729de1988c0ff1ce04524afecd36e53e4e5d6ca2bf31586d08fb02f32"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1253/cos-darwin-arm64.zip"
      sha256 "c9c824c673182adca8d0efe0e915537c02d98e7b0cf8b3b97198234ed122f672"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1253/cos-linux-amd64-glibc2.35.zip"
      sha256 "46883f4eafb48bb86b49aa7d0d62988bf5a927c77786b4426c2d40598e53a4e3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1253/cos-linux-arm64.zip"
      sha256 "a5e813aec7fcfba57af3aca3de9fa302250a7834916457d1e2ae80a00024faec"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
