# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1234"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1234/cos-darwin-amd64.zip"
      sha256 "95b796265af70dd50d6f2593f1940ef0ff0612babbc4eb40cbf07a2cc8bd466e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1234/cos-darwin-arm64.zip"
      sha256 "3fea435a49cd833b3b75b655b435ff27b3428a05f591bbb622fa9c7c79d5ee13"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1234/cos-linux-amd64-glibc2.35.zip"
      sha256 "260f71ab3f5f7db1c037c53fdecb4785872ae027ffc36deebc3c4e5a4a9d7919"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1234/cos-linux-arm64.zip"
      sha256 "89878ea92ff709522ed713949f25b18eebd9a0fca57ac6cd6ca0083d05a536f6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
