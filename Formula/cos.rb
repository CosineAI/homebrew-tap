# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "0.2.0"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                        url "https://github.com/CosineAI/cli/releases/download/0.2.0/cosine-darwin-arm64.zip"
                        sha256 "348236c8b22e2e44ef26f84d8fa63ba1ecc4b88c0d57609236a26433e255a32c"
      def install
        bin.install "cosine" => "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                        url "https://github.com/CosineAI/cli/releases/download/0.2.0/cosine-linux-amd64.zip"
                        sha256 "20f6227e11d3f8db47604449bc4579fd848bf893d2206cbecca2d3e04f0a2da7"
      def install
        bin.install "cosine" => "cos"
      end
    end
    if Hardware::CPU.arm?
                        url "https://github.com/CosineAI/cli/releases/download/0.2.0/cosine-linux-arm64.zip"
                        sha256 "e066381ebca632f0c65c4469f192417ffcedcfa95185ba345ed72265163e0371"
      def install
        bin.install "cosine" => "cos"
      end
     end
   end

end
