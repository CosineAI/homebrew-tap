# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.15.1"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                                                                            url "https://github.com/CosineAI/cli/releases/download/1.15.1/cosine-darwin-arm64.zip"
                                                                                                                                                            sha256 "e1d464977a75beb86e993bba13e298ef4f75f3e52bff9bd1d0d4e0ca1d6acefc"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                                                                            url "https://github.com/CosineAI/cli/releases/download/1.15.1/cosine-linux-amd64.zip"
                                                                                                                                                            sha256 "95aaef8ed3f015ed6f5557c45791712658b99d3d214695d07103f75b04afdd35"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                                                                            url "https://github.com/CosineAI/cli/releases/download/1.15.1/cosine-linux-arm64.zip"
                                                                                                                                                            sha256 "8295e91497e9cf967dd6bc081934e56f89085678652765c5dc6628d584ae0b68"
      def install
        bin.install "cos"
      end
     end
   end

end
