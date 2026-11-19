# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1466"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1466/cos-darwin-arm64.zip"
      sha256 "4ada82f8977ce0921aa3ee6e8515d58c6c6788f350e6c405dc212da48bbf2904"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1466/cos-linux-amd64-glibc2.35.zip"
      sha256 "959b4634dce0126761e82a5662902c3a3ebd6cf7d112f85adf6c85b465a48e2f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1466/cos-linux-arm64.zip"
      sha256 "cb7a188ea747eaadca399545bf2bf562ca3c31aca46af0c7d771cd3639382704"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
