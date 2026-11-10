# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1410"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1410/cos-darwin-arm64.zip"
      sha256 "3ed0af4815a0c5c0523c0ab0ed503a3f6e039b91d8a289c524d8a498a34b7416"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1410/cos-linux-amd64-glibc2.35.zip"
      sha256 "896059b686725690a2ec956ac588ef4d619334d440e01326e5e6647a9de7eb8e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1410/cos-linux-arm64.zip"
      sha256 "a6091b79ab43bd9c64c7b47ecd894d0786a47180fcf059dffc2a6847811096c5"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
