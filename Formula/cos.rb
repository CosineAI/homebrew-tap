# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.0.1"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                url "https://github.com/CosineAI/cli/releases/download/1.0.1/cosine-darwin-arm64.zip"
                                                sha256 "366990b87484b76f170cdb89f7c2ce77dbebe293edfbcddd77e2f0cb650863f5"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                url "https://github.com/CosineAI/cli/releases/download/1.0.1/cosine-linux-amd64.zip"
                                                sha256 "0f008c7a9e55028efa1c7d787f868af12a7f44fc020d3ef359aa6f45504bc6f5"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                url "https://github.com/CosineAI/cli/releases/download/1.0.1/cosine-linux-arm64.zip"
                                                sha256 "78e255332187f317da6f6f4dc8df2eb5b4d6c44b8558625eedc9d0d2d96c6028"
      def install
        bin.install "cos"
      end
     end
   end

end
