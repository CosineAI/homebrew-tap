class CosBeta < Formula
  desc "Beta builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "v2.0.0-beta7"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CosineAI/cli2/releases/download/v2.0.0-beta7/cos2-darwin-arm64.zip"
      def install
        bin.install "cos2" => "cos-beta"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/CosineAI/cli2/releases/download/v2.0.0-beta7/cos2-linux-amd64.zip"
      def install
        bin.install "cos2" => "cos-beta"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/CosineAI/cli2/releases/download/v2.0.0-beta7/cos2-linux-arm64.zip"
      def install
        bin.install "cos2" => "cos-beta"
      end
    end
  end
end
