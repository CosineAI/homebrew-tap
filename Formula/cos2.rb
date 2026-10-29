# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1339"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1339/cos-darwin-arm64.zip"
      sha256 "d944d734c2c7f13162920b871a4d9b570456fc9169b4a61b4ad0c990d4cf6744"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1339/cos-linux-amd64-glibc2.35.zip"
      sha256 "eb5dffeeb43edff68ffb1ac00ae680423d6f83973594a9d5da30a9f9b06c904f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1339/cos-linux-arm64.zip"
      sha256 "624225de09428104d06dd1619bc9b3a4c5c59d1045bded38a514f40b48047d1e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
