# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.14.3"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                                                    url "https://github.com/CosineAI/cli/releases/download/1.14.3/cosine-darwin-arm64.zip"
                                                                                                                                    sha256 "893fc4ee4f54d56ae2c27414745ef2247c64d050a225c1ef566a0b3dff0eb36e"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                                                    url "https://github.com/CosineAI/cli/releases/download/1.14.3/cosine-linux-amd64.zip"
                                                                                                                                    sha256 "f7303a9696b1152c36f0649bee9301436861d3c4063b8407dec7716aab8acf15"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                                                    url "https://github.com/CosineAI/cli/releases/download/1.14.3/cosine-linux-arm64.zip"
                                                                                                                                    sha256 "1abc7c8dd40c1189b05886739a5a667f1ff37e2de7da86d1110521ca723e7125"
      def install
        bin.install "cos"
      end
     end
   end

end
