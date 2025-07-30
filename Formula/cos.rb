
# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "0.1.2"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosineAI/cli/releases/download/0.1.2/cosine-darwin-arm64.zip"
      sha256 "440532a7a230e7c6491bb3c1255000a45b5d71a3100eae8001c5057a4e861052"
      def install
        bin.install "cosine" => "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/CosineAI/cli/releases/download/0.1.2/cosine-linux-amd64.zip"
      sha256 "4cc6351f20199a347a90da7dff62592a998590b0bf2efd211e2f50a9b6892258"
      def install
        bin.install "cosine" => "cos"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/CosineAI/cli/releases/download/0.1.2/cosine-linux-arm64.zip"
      sha256 "440532a7a230e7c6491bb3c1255000a45b5d71a3100eae8001c5057a4e861052"
      def install
        bin.install "cosine" => "cos"
      end
     end
   end

end
