# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1304"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1304/cos-darwin-amd64.zip"
      sha256 "09dc5f18120e76e53d12ba693120a923e33738333d0e626f748d112ac8c4b4d2"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1304/cos-darwin-arm64.zip"
      sha256 "a32cb59980b2e515ccb27a5dd99784c54b5c48048a1942629f54e66bd098d12c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1304/cos-linux-amd64-glibc2.35.zip"
      sha256 "20ac55d777dad4777c431d88877d9788d8a69d040986c41edaed41e506afcb1a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1304/cos-linux-arm64.zip"
      sha256 "a039cca35c526795645971f8451ff6420371fa7c3259ff7df6ac166260a63f01"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
