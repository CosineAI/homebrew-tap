# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1509"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1509/cos-darwin-arm64.zip"
      sha256 "1702c8026fb32d06ebe570189563b0b36015555edf3f51dcc72328d3f8e54ee6"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1509/cos-linux-amd64-glibc2.35.zip"
      sha256 "35f8abc396df4d66d8cc93c86cbadba2953c7bcfc8ac76fc9c82d2ff4e19d2b8"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1509/cos-linux-arm64.zip"
      sha256 "3744002517651293fe41e010c98f2d86062aeeef1f054f3ab8456e132b8ec7f9"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
