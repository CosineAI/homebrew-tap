# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.0.5"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                        url "https://github.com/CosineAI/cli/releases/download/1.0.5/cosine-darwin-arm64.zip"
                                                                        sha256 "f2915b787b1bcb10556018e5244d4005c1e59bdc8eb913a630d818dd6f390a35"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                        url "https://github.com/CosineAI/cli/releases/download/1.0.5/cosine-linux-amd64.zip"
                                                                        sha256 "ee477c4c77d8eb75983eb8d27bc44625908d8a54e73ed91599f7cee2619a0208"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                        url "https://github.com/CosineAI/cli/releases/download/1.0.5/cosine-linux-arm64.zip"
                                                                        sha256 "21ac2f1bf29bf4c8be4515e05b590ed28bb84abab7137b24380b25802bc18de7"
      def install
        bin.install "cos"
      end
     end
   end

end
