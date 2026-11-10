# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1414"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1414/cos-darwin-arm64.zip"
      sha256 "4e546b786b709121f88894af083a9fbbf7d827f32de10da2c5b5d7722c150a06"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1414/cos-linux-amd64-glibc2.35.zip"
      sha256 "e4d486d24252ac5f38e2c86615a77cfb0fde737f78e5c7d33107cca0d03dfae4"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1414/cos-linux-arm64.zip"
      sha256 "dd0a48696531ca9c32b336cf9afa9733ec01ea9a4995d9420f540aea8412a89e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
