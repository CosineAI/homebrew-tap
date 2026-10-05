class CosBeta < Formula
  desc "Beta builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "2.0.30"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/release/2.0.30/cos-darwin-amd64.zip"
      sha256 "db452e3b6f36186c71d55825a4afe261ecb88f389b3393f2ec46f4b4e7f9fc55"
      def install
        bin.install "cos" => "cos-beta"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/release/2.0.30/cos-darwin-arm64.zip"
      sha256 "583869160f4041978ac14d4c3ca4e2dba15c0bf642830bcbd040aa7176662674"
      def install
        bin.install "cos" => "cos-beta"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/release/2.0.30/cos-linux-amd64-glibc2.35.zip"
      sha256 "3850faeb13179d24579a6fa2e0dde60886de0efc1de87169cb844d97e601abb5"
      def install
        bin.install "cos" => "cos-beta"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/release/2.0.30/cos-linux-arm64.zip"
      sha256 "6243c04d21b05a6edb8ca0080dc3246cd5e9d3a05d7d611ff9fad1099c36a407"
      def install
        bin.install "cos" => "cos-beta"
      end
    end
  end
end
