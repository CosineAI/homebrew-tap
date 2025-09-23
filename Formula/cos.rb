# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.0.6"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                              url "https://github.com/CosineAI/cli/releases/download/1.0.6/cosine-darwin-arm64.zip"
                                                                              sha256 "06dfa05798c7ed9acd3cf94ae871178103b5e49c27bf4335b0f54805ac398285"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                              url "https://github.com/CosineAI/cli/releases/download/1.0.6/cosine-linux-amd64.zip"
                                                                              sha256 "88c2ca3fa78af9f76d37ebd5ae1b10008a06395d709de19b2ba293fe8d2d90e1"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                              url "https://github.com/CosineAI/cli/releases/download/1.0.6/cosine-linux-arm64.zip"
                                                                              sha256 "f1738f7d30de8c1399e3d31d0b99d14289b432e61252d94ab9033f32e9bba6dc"
      def install
        bin.install "cos"
      end
     end
   end

end
