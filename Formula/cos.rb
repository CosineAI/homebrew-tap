# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "0.2.1"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                              url "https://github.com/CosineAI/cli/releases/download/0.2.1/cosine-darwin-arm64.zip"
                              sha256 "af3aba887ae305c2a3234b0e60d8b3366a1ff4261cc8a7473db3859f3b564bfd"
      def install
        bin.install "cosine" => "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                              url "https://github.com/CosineAI/cli/releases/download/0.2.1/cosine-linux-amd64.zip"
                              sha256 "f70ba0bb6b0e8c239311a8a25ee5365f68773a145ea60d8e9d7ac72f6104f58a"
      def install
        bin.install "cosine" => "cos"
      end
    end
    if Hardware::CPU.arm?
                              url "https://github.com/CosineAI/cli/releases/download/0.2.1/cosine-linux-arm64.zip"
                              sha256 "c42b1b2a26df2fa9fb2b67454d6fe8eb0b73b93c629ecb04ca0d96bb2e6b7c95"
      def install
        bin.install "cosine" => "cos"
      end
     end
   end

end
