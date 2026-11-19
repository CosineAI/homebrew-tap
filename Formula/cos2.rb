# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1457"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1457/cos-darwin-arm64.zip"
      sha256 "53008206d0dd9bd5bc9bf9da88744385dd1cfad7347dcf2644bb4381f5a4e6e0"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1457/cos-linux-amd64-glibc2.35.zip"
      sha256 "9b4005bcd9843023872bdba6f91f4c5ccf605076d87111f62f602e79d684db62"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1457/cos-linux-arm64.zip"
      sha256 "d4c39a28cf7e3f776a6e967d361489e14799a80ad6afa8d8e1ab3991fcae5ae0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
