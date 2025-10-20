# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.14.2"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                                              url "https://github.com/CosineAI/cli/releases/download/1.14.2/cosine-darwin-arm64.zip"
                                                                                                                              sha256 "6e06260830cdd4cd8667e86d6fed95851260580b91e811ebff8e1f4a36c11bd0"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                                              url "https://github.com/CosineAI/cli/releases/download/1.14.2/cosine-linux-amd64.zip"
                                                                                                                              sha256 "14c8d1e0f4afd1900e07bf49b50b0ddaee92db94526eba14ae70adf37a613c23"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                                              url "https://github.com/CosineAI/cli/releases/download/1.14.2/cosine-linux-arm64.zip"
                                                                                                                              sha256 "6a972ff11b4694c81ab57cd9544a264e6da90c74b61e3b23b009b6500fd19231"
      def install
        bin.install "cos"
      end
     end
   end

end
