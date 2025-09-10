# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.0.2"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                      url "https://github.com/CosineAI/cli/releases/download/1.0.2/cosine-darwin-arm64.zip"
                                                      sha256 "d6247f5b81158955760f8d32663275501608257d464fa57f7e00ce39d5ea88aa"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                      url "https://github.com/CosineAI/cli/releases/download/1.0.2/cosine-linux-amd64.zip"
                                                      sha256 "f7a08ee76fa445e5155edd77e8c98bb4f08b5633003309cf0db7db235338eef1"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                      url "https://github.com/CosineAI/cli/releases/download/1.0.2/cosine-linux-arm64.zip"
                                                      sha256 "a114d769e0a5f335602edb4ffb539e853351880dfacede88b613fc9c9b8ae017"
      def install
        bin.install "cos"
      end
     end
   end

end
