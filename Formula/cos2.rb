# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1361"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1361/cos-darwin-arm64.zip"
      sha256 "b33d4ac7ba4ed9343a9aee1c2e723169744ea820cba59aec335c2dc74c912e75"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1361/cos-linux-amd64-glibc2.35.zip"
      sha256 "5cdaf513676665c6946041917b4aefdc78e4742f1a74f5b5b0db9a4a1caa397d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1361/cos-linux-arm64.zip"
      sha256 "7a2cedee8b582f7c2103f6088e8ce1b03642a90c79862cabdbd59c4c0cbc430c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
