# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1214"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1214/cos-darwin-amd64.zip"
      sha256 "79417c2b018f240c3f9d5115a74f240f8fb2e497d81560705f199e31844effc9"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1214/cos-darwin-arm64.zip"
      sha256 "5b2d0952eaa04b630413c367b6314c2acbf3297cc890c2ffa614558e39d2132a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1214/cos-linux-amd64-glibc2.35.zip"
      sha256 "fb11a484e9ab6e6af967ea1a1abaf91407f929704536297e6a07ef35b524fe36"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1214/cos-linux-arm64.zip"
      sha256 "46e372604a93950249876100cb4df644a7b95c11e61f78057c7f08db0faac17e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
