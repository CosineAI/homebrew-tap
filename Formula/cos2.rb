# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1236"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1236/cos-darwin-amd64.zip"
      sha256 "ce1db103b8b8dfeeeaaefb0c4775f53c0220d3ca489c23394dd077b73e55de3e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1236/cos-darwin-arm64.zip"
      sha256 "9353c8dfb221c175ab89b5c833e46a0aed50c6c523709e85d42b16e7721c90bc"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1236/cos-linux-amd64-glibc2.35.zip"
      sha256 "f16958e8eac17e981b70858760ce2fe145f5959ef888fc4aabb3a51dbb6e9fcf"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1236/cos-linux-arm64.zip"
      sha256 "cebc064f99eb653ad960c2588feb199c83da6c2b17a72000bb1f79770882b660"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
