# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.15.2"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                                                                                  url "https://github.com/CosineAI/cli/releases/download/1.15.2/cosine-darwin-arm64.zip"
                                                                                                                                                                  sha256 "11b053a3b568b07d20a7c170f6859672c8bdc587971a24013ffcf6f22096de31"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                                                                                  url "https://github.com/CosineAI/cli/releases/download/1.15.2/cosine-linux-amd64.zip"
                                                                                                                                                                  sha256 "c65bcdd50a489888bc0de8ad15b965c97f7f319bd0e19b05c3e066ee5f0a3da1"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                                                                                  url "https://github.com/CosineAI/cli/releases/download/1.15.2/cosine-linux-arm64.zip"
                                                                                                                                                                  sha256 "b66ca0b86cb5439c814397370f2fcdffaa3b77c355b5e98792373c76e9a874d0"
      def install
        bin.install "cos"
      end
     end
   end

end
