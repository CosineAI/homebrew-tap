class CosBeta < Formula
  desc "Beta builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "2.0.31"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/release/2.0.31/cos-darwin-amd64.zip"
      sha256 "6d374a65826b48f521c99793c4f77b16658b8ac73f22ae588f29f1e2c86a180b"
      def install
        bin.install "cos" => "cos-beta"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/release/2.0.31/cos-darwin-arm64.zip"
      sha256 "bd97c76aa4bbfaa0aedd5765b47d200f211dbfcfb6161ed021b27d2d597c66f0"
      def install
        bin.install "cos" => "cos-beta"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/release/2.0.31/cos-linux-amd64-glibc2.35.zip"
      sha256 "1338b62813130eb80ffc70330c8a83ef6e4be69e1dd9713ac4b75a9320615787"
      def install
        bin.install "cos" => "cos-beta"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/release/2.0.31/cos-linux-arm64.zip"
      sha256 "7abfab20a1d7b00b82f919e7644d7e031bec5e3393713f25d4eefc80509428f8"
      def install
        bin.install "cos" => "cos-beta"
      end
    end
  end
end
