# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1351"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1351/cos-darwin-arm64.zip"
      sha256 "1838cd05f10a03820f7b692ad60ac4cca4f38a15d69e59131d0bee1bed69158e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1351/cos-linux-amd64-glibc2.35.zip"
      sha256 "569db964a5b04d505977ee445a9eea0cf53a98367b00405efa217b11e2006855"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1351/cos-linux-arm64.zip"
      sha256 "773e842cb539749f8b17a9421e0f77195b4b789b8a11af1c31d4fe48b340f80d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
