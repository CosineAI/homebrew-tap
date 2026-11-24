# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1496"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1496/cos-darwin-arm64.zip"
      sha256 "abedb58c8b96e6979ccb87f9a65673bd2192d9ef27b6fbab9a53c4b5b090033c"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1496/cos-linux-amd64-glibc2.35.zip"
      sha256 "79250626d016c69fefdfcc3595d22d0e2f83344b0fe55db82ba4805ed657ad53"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1496/cos-linux-arm64.zip"
      sha256 "56b04c4efe14047666279fd57c3e7a7f9a88bd2032b13dbf9aa08174bf84eecd"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
