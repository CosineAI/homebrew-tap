# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.0.3"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                            url "https://github.com/CosineAI/cli/releases/download/1.0.3/cosine-darwin-arm64.zip"
                                                            sha256 "62924dfd199eb0ab5dea90716f605bbca96923dc645777bd61c99b8351dd28e6"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                            url "https://github.com/CosineAI/cli/releases/download/1.0.3/cosine-linux-amd64.zip"
                                                            sha256 "ff5be9bdc837354c69356ba7e208934cebdd612a2d954555032aa52936751884"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                            url "https://github.com/CosineAI/cli/releases/download/1.0.3/cosine-linux-arm64.zip"
                                                            sha256 "340bb30913eac326a13887ec1b2ea0fcc7408764eff36f38be719ef132d66291"
      def install
        bin.install "cos"
      end
     end
   end

end
