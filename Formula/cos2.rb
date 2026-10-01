# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1218"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1218/cos-darwin-amd64.zip"
      sha256 "71e0c2ae615f91abcb342012d75be1cce9470d65eab82e3d3b7d364b6c7072e4"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1218/cos-darwin-arm64.zip"
      sha256 "91bd19f139f3f2aa31f9d62ad35aa4c4753d65e27cecc3c90ce0167688772df4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1218/cos-linux-amd64-glibc2.35.zip"
      sha256 "555887dbff5c14bcc0f8bfeccfaa281e0a2a6bdbfcb86b782343e2aff02f0461"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1218/cos-linux-arm64.zip"
      sha256 "35359397bead71ebdb7efd7c9c181353f05969a8fa30a4b8f4a4eee389dc8ee0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
