# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "0.1.3"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
            url "https://github.com/CosineAI/cli/releases/download/0.1.3/cosine-darwin-arm64.zip"
            sha256 "93391a0af1973b037f184f6ff35401b36ba3b73a99b8d0e9444e208034bbd038"
      def install
        bin.install "cosine" => "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
            url "https://github.com/CosineAI/cli/releases/download/0.1.3/cosine-linux-amd64.zip"
            sha256 "d8959ab22dcac501464121032e8dbeaa015f44020d38bd1822c6f70c0310373d"
      def install
        bin.install "cosine" => "cos"
      end
    end
    if Hardware::CPU.arm?
            url "https://github.com/CosineAI/cli/releases/download/0.1.3/cosine-linux-arm64.zip"
            sha256 "1474b0e286d5d725a61982303bc5e3d07a2fbcf4d1b01b91327716386b090515"
      def install
        bin.install "cosine" => "cos"
      end
     end
   end

end
