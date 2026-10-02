# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1227"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1227/cos-darwin-amd64.zip"
      sha256 "daf57d7909e5d2b9639c3908ef605628e41b0b447214982c9276be003ca32a04"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1227/cos-darwin-arm64.zip"
      sha256 "497267bd110310d38aca745b11c5e52476bb00996fc95bb69968fe67aae8218d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1227/cos-linux-amd64-glibc2.35.zip"
      sha256 "f6ce4af3c043852060e52f9e85404dfcd952db29651600505cb46f0adcf2e1fc"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1227/cos-linux-arm64.zip"
      sha256 "021db451264fabc6c3c61ba1911400432e1ae8d86691881fd7c78c739c72acd7"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
