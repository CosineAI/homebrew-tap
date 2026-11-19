# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1454"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1454/cos-darwin-arm64.zip"
      sha256 "ebb387b20f92860977d28874d9953ad1398b820b7e6fe883351700fe0e1be125"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1454/cos-linux-amd64-glibc2.35.zip"
      sha256 "9558ba41b06c11001282d491a3022714e1392815864b92fff8ef1a2862fb43fb"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1454/cos-linux-arm64.zip"
      sha256 "6fa6a15176a6df4b0ca802b4c11b60994d31ef83d8611636358e50e227db7827"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
