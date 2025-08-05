# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "0.1.4"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                  url "https://github.com/CosineAI/cli/releases/download/0.1.4/cosine-darwin-arm64.zip"
                  sha256 "60ceaa8b23e9e82b5281ce6d310f809b1d644e89f0e0efe9104c935f41a82e8f"
      def install
        bin.install "cosine" => "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                  url "https://github.com/CosineAI/cli/releases/download/0.1.4/cosine-linux-amd64.zip"
                  sha256 "355c7646e0b3e2c7183206f342936d2d73ad9644e35426e291dc155f3202341a"
      def install
        bin.install "cosine" => "cos"
      end
    end
    if Hardware::CPU.arm?
                  url "https://github.com/CosineAI/cli/releases/download/0.1.4/cosine-linux-arm64.zip"
                  sha256 "b196b28517b6ead2a4e3e13beae6028c1699bf0e8db1257ba51da67c736e855c"
      def install
        bin.install "cosine" => "cos"
      end
     end
   end

end
