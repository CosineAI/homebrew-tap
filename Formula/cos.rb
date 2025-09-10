# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.0.0"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                          url "https://github.com/CosineAI/cli/releases/download/1.0.0/cosine-darwin-arm64.zip"
                                          sha256 "7448c847db667060eb2d6f69c7809161d57f8f20c2f74245ceec5f67552cc12f"
      def install
        bin.install "cosine" => "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                          url "https://github.com/CosineAI/cli/releases/download/1.0.0/cosine-linux-amd64.zip"
                                          sha256 "afb15af6db3f2b997d3f939ed3aaf58301f7c89121a64aadec11919f362dbc95"
      def install
        bin.install "cosine" => "cos"
      end
    end
    if Hardware::CPU.arm?
                                          url "https://github.com/CosineAI/cli/releases/download/1.0.0/cosine-linux-arm64.zip"
                                          sha256 "a921b5184aca73f85dd4bef930afcebacaa44c18b4c1e86d1f214644aadcccc3"
      def install
        bin.install "cosine" => "cos"
      end
     end
   end

end
