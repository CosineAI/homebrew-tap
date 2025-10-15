# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.14"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                                  url "https://github.com/CosineAI/cli/releases/download/1.14/cosine-darwin-arm64.zip"
                                                                                                                  sha256 "4b4940633ad3198fafb46d0afc520e32475f7281d07f4ddddc160442c4c9f615"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                                  url "https://github.com/CosineAI/cli/releases/download/1.14/cosine-linux-amd64.zip"
                                                                                                                  sha256 "f182b8d873d68cbe6f1f2503da2ea46c26f9ccd5413ac41e87933f008cd60b7f"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                                  url "https://github.com/CosineAI/cli/releases/download/1.14/cosine-linux-arm64.zip"
                                                                                                                  sha256 "d53c8b61e732af5a2b4ca69ae349e5cae2023a8a5d2d5a3c06302a8620336e54"
      def install
        bin.install "cos"
      end
     end
   end

end
