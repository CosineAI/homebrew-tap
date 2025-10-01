# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.1"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                          url "https://github.com/CosineAI/cli/releases/download/1.1/cosine-darwin-arm64.zip"
                                                                                          sha256 "41371a41049a445e02ca3225f4b9b2a29c1b70698595b75a970cf7d579065959"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                          url "https://github.com/CosineAI/cli/releases/download/1.1/cosine-linux-amd64.zip"
                                                                                          sha256 "54e3596afd8ecccd11a67d8fe0d2bc0a8a4b809c827a9160e9611cbbde125127"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                          url "https://github.com/CosineAI/cli/releases/download/1.1/cosine-linux-arm64.zip"
                                                                                          sha256 "920054da87614355d0aad552559c3f05bbe58150a138f52ec0fabe32f3a38a41"
      def install
        bin.install "cos"
      end
     end
   end

end
