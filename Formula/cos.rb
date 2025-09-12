# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.0.4"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                  url "https://github.com/CosineAI/cli/releases/download/1.0.4/cosine-darwin-arm64.zip"
                                                                  sha256 "b4b357e900f7660269d8758d0387f0664b5113b21d81c874b891c2e3215b398b"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                  url "https://github.com/CosineAI/cli/releases/download/1.0.4/cosine-linux-amd64.zip"
                                                                  sha256 "80b098c49813e2be8e45f586c7c7b2880223ab82530fedb1c3061b07a9028bf2"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                  url "https://github.com/CosineAI/cli/releases/download/1.0.4/cosine-linux-arm64.zip"
                                                                  sha256 "f65a14965a882dcce549a7a6bc90fc35781806ccb80ad48a46a053eb206ac093"
      def install
        bin.install "cos"
      end
     end
   end

end
