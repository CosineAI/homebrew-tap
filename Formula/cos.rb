# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.12"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                      url "https://github.com/CosineAI/cli/releases/download/1.12/cosine-darwin-arm64.zip"
                                                                                                      sha256 "3253e799809d8c880d716a9d2ed32b1acf11089059d191aef704d389d60e4999"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                      url "https://github.com/CosineAI/cli/releases/download/1.12/cosine-linux-amd64.zip"
                                                                                                      sha256 "775610ac6f737e4acd299c59f5e855e4b8d0907d06708009dab0a1abaed2e86c"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                      url "https://github.com/CosineAI/cli/releases/download/1.12/cosine-linux-arm64.zip"
                                                                                                      sha256 "b063ccfedcaf98f4ab35135e146ac5a5fe657f6971b49e81e3d2c0eb284662a3"
      def install
        bin.install "cos"
      end
     end
   end

end
