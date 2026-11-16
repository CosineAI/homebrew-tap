# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1442"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1442/cos-darwin-arm64.zip"
      sha256 "d73e60f67a8ebe45006daab0d9ab8c5e790a8d5f63e9bffdb5be295cc8f18ec2"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1442/cos-linux-amd64-glibc2.35.zip"
      sha256 "71ffc0de6f8eec50fd1810c023a793a0e464dde15e2c5a53c2fb4622525804a5"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1442/cos-linux-arm64.zip"
      sha256 "0947d24874bd7c940262c7bbdda3558111de690d5b7bf4d504b4ee28fa85720b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
