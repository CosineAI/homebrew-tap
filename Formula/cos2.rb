# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1443"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1443/cos-darwin-arm64.zip"
      sha256 "915026a0d672d0898320f5f73dd1e2a9979c334d966d2b57dda74c0d315cbac2"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1443/cos-linux-amd64-glibc2.35.zip"
      sha256 "9ea6df346cebf9f825858fc2642acc32f47cf8dae71ab7e504bd33175b485077"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1443/cos-linux-arm64.zip"
      sha256 "82748d42dba8b73f3799acbe7d7719777ebab7102412488de34db3055bb9fff2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
