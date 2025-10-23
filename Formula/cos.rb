# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "1.14.4"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                                                          url "https://github.com/CosineAI/cli/releases/download/1.14.4/cosine-darwin-arm64.zip"
                                                                                                                                          sha256 "71712c6048cca083be864aead50412b584731b86f2df350f9ac516e9aa4f342a"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
                                                                                                                                          url "https://github.com/CosineAI/cli/releases/download/1.14.4/cosine-linux-amd64.zip"
                                                                                                                                          sha256 "85b453b14f758608b23669ed80e2fda668c70cb038be13c74d1c29550f578300"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
                                                                                                                                          url "https://github.com/CosineAI/cli/releases/download/1.14.4/cosine-linux-arm64.zip"
                                                                                                                                          sha256 "ea49fa55f0075cdc696871cf26d3929606dd0767cf4420d1afe54791402bde39"
      def install
        bin.install "cos"
      end
     end
   end

end
