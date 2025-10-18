# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.14.1"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                                        url "https://github.com/CosineAI/cli/releases/download/1.14.1/cosine-darwin-arm64.zip"
                                                                                                                        sha256 "03873c9fa374d8d4ef862b8c362ca162cb7785ac003fdb69aebe23e287bb3637"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                                        url "https://github.com/CosineAI/cli/releases/download/1.14.1/cosine-linux-amd64.zip"
                                                                                                                        sha256 "b78c48be47fcd7f8728c47078b4c895a211f2f98c68e59ca1434d122043e9284"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                                        url "https://github.com/CosineAI/cli/releases/download/1.14.1/cosine-linux-arm64.zip"
                                                                                                                        sha256 "6bfe564a74e30bbe6d34f54b3150fda2cca3fb1e37c54a2b835565a0f2a13a7f"
      def install
        bin.install "cos"
      end
     end
   end

end
