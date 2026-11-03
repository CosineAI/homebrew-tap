# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1373"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1373/cos-darwin-arm64.zip"
      sha256 "4e143f43b12eaa525dadab0eaefe2ed98764876c2f8ce4b8002b765f17391d2e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1373/cos-linux-amd64-glibc2.35.zip"
      sha256 "5c765420b427c7d15a60c482ef4dd1311d09b13079ec6253d0bbcca77b1bf758"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1373/cos-linux-arm64.zip"
      sha256 "2e15c47c1a972dc95dfdfbe148deb6701afcbe516a3896535bc5b418520797d5"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
