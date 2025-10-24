# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.14.5"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                                                                url "https://github.com/CosineAI/cli/releases/download/1.14.5/cosine-darwin-arm64.zip"
                                                                                                                                                sha256 "56c2cc17d9d04c68d77b5827a10fbc02a2d9899b26d1bb6275622c2399584470"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                                                                url "https://github.com/CosineAI/cli/releases/download/1.14.5/cosine-linux-amd64.zip"
                                                                                                                                                sha256 "a38c5d2b9345bd24c847825271cd11654fc5888383996413e6f9407cf5c1e2a2"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                                                                url "https://github.com/CosineAI/cli/releases/download/1.14.5/cosine-linux-arm64.zip"
                                                                                                                                                sha256 "18fb57aba873ec6eb3f6c76c38b093692b9f7f2615062bb1fb3ca4c5261f45d1"
      def install
        bin.install "cos"
      end
     end
   end

end
