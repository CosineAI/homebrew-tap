# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "0.2.2"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                    url "https://github.com/CosineAI/cli/releases/download/0.2.2/cosine-darwin-arm64.zip"
                                    sha256 "e75f0e6cdc56ad7d94b590256da98445ec77afbaff17579d187db61fde88e6c9"
      def install
        bin.install "cosine" => "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                    url "https://github.com/CosineAI/cli/releases/download/0.2.2/cosine-linux-amd64.zip"
                                    sha256 "3246f4d3d96ef6a4ed87a52267267ed0c9f2b45e352566a303845a6f0817242e"
      def install
        bin.install "cosine" => "cos"
      end
    end
    if Hardware::CPU.arm?
                                    url "https://github.com/CosineAI/cli/releases/download/0.2.2/cosine-linux-arm64.zip"
                                    sha256 "00c298d76b984d7a9b7288572375c82e7935d1a0a318e51d86304e2bf4a40578"
      def install
        bin.install "cosine" => "cos"
      end
     end
   end

end
