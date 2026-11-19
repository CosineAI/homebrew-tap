# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1468"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1468/cos-darwin-arm64.zip"
      sha256 "d0dc6f93bc7cb3309c47622001118490fef2ca7d206f6b9e4c2a5fa60be86836"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1468/cos-linux-amd64-glibc2.35.zip"
      sha256 "3054c280d095a7705dbe703d3a693177bce5ab1041f490f72aad6b02099d1403"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1468/cos-linux-arm64.zip"
      sha256 "52783c9924588623245b8fa66c4303fea578e6b1a87f1d6a601b322838da5d21"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
