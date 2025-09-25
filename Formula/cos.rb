# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.0.7"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                    url "https://github.com/CosineAI/cli/releases/download/1.0.7/cosine-darwin-arm64.zip"
                                                                                    sha256 "5c12e54aa7aa439a11edd1faaeea24d564747104baed95e52c81913e70677e3d"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                    url "https://github.com/CosineAI/cli/releases/download/1.0.7/cosine-linux-amd64.zip"
                                                                                    sha256 "91f1c5d859a4734a93217fb48efa5b0c72ca8c4fff284df3f9df553ed8947a7d"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                    url "https://github.com/CosineAI/cli/releases/download/1.0.7/cosine-linux-arm64.zip"
                                                                                    sha256 "8a12734132167be7750b11fbcf0ca8e7112f9cd86d5ab4f89dd0a5ce9c809995"
      def install
        bin.install "cos"
      end
     end
   end

end
