# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1238"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1238/cos-darwin-amd64.zip"
      sha256 "3e69fc76aeba98c885c1439583d9354777dabc6ae86e2a2339f70be4f56996f7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1238/cos-darwin-arm64.zip"
      sha256 "dea4aa57bc0950b22f35f0cfab65fae9082860678f081bf48da4a8026ee41360"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1238/cos-linux-amd64-glibc2.35.zip"
      sha256 "afb1e47b618d2ecbe0e60e48ff4ff173715781503657778aeda361369b6547b0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1238/cos-linux-arm64.zip"
      sha256 "ef29233e42fed3a046c1982d07283b6d9af984e29b3c33c5ae6c200d8c55e604"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
