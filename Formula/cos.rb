# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.11"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                url "https://github.com/CosineAI/cli/releases/download/1.11/cosine-darwin-arm64.zip"
                                                                                                sha256 "82a208488b03ab6c112497d441acb6387cbb0d904583e458080937eaee43505e"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                url "https://github.com/CosineAI/cli/releases/download/1.11/cosine-linux-amd64.zip"
                                                                                                sha256 "fb36edf99a51e468580ce42b66fb12df2d277e20d29677cbdcf8ddf67b9ecaa5"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                url "https://github.com/CosineAI/cli/releases/download/1.11/cosine-linux-arm64.zip"
                                                                                                sha256 "57f79e3db17d41bcc6a711777b4216fb27bfcc19884e5cece6403e48640213e8"
      def install
        bin.install "cos"
      end
     end
   end

end
