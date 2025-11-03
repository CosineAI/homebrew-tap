# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.15.0"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                                                                      url "https://github.com/CosineAI/cli/releases/download/1.15.0/cosine-darwin-arm64.zip"
                                                                                                                                                      sha256 "daddb8852431ba86da77ab2788d9acf30fa1896fc50b2c0f6d7f67f04eb3c0a7"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                                                                      url "https://github.com/CosineAI/cli/releases/download/1.15.0/cosine-linux-amd64.zip"
                                                                                                                                                      sha256 "5b73dc9b3843d0923d77ea19e18fe1e5f7746392cf1d91a857a06bb2cbbb6470"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                                                                      url "https://github.com/CosineAI/cli/releases/download/1.15.0/cosine-linux-arm64.zip"
                                                                                                                                                      sha256 "6417f0da741794cca94f07d2ffae6ae02a6a682af7fed73ca997d2c4c02f62cc"
      def install
        bin.install "cos"
      end
     end
   end

end
