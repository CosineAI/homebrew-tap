# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.13"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                            url "https://github.com/CosineAI/cli/releases/download/1.13/cosine-darwin-arm64.zip"
                                                                                                            sha256 "9ed46017d246cbff446e1f22e81f4bea6480768e146a2242fec7f9dd3ad5a230"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                            url "https://github.com/CosineAI/cli/releases/download/1.13/cosine-linux-amd64.zip"
                                                                                                            sha256 "4aea1499db56e6d943480b522841e335a6f715458da5ecc8042246faef8fe357"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                            url "https://github.com/CosineAI/cli/releases/download/1.13/cosine-linux-arm64.zip"
                                                                                                            sha256 "94f07fa05eac1584a509129aa92d66eddfe9f8c20a42f824a2b4e3dfa826256e"
      def install
        bin.install "cos"
      end
     end
   end

end
