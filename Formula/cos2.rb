# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1336"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1336/cos-darwin-arm64.zip"
      sha256 "25cd1648f18c195a1b5e230ffaef73e9bd7f475793d955f538c587048f565e80"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1336/cos-linux-amd64-glibc2.35.zip"
      sha256 "5bba68261c9f251cc01052866237ce951f6a4e554c89939f192bae9d16822fac"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1336/cos-linux-arm64.zip"
      sha256 "4ffb5bad7c0557d6204bfdb4c4c0a3e7cadba98363612e31196efaeb431cdec1"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
