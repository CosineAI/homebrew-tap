# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1378"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1378/cos-darwin-arm64.zip"
      sha256 "5aad82ed2f6ca35edf11a36642a1a20158b782568ee3042a2493c408b009482f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1378/cos-linux-amd64-glibc2.35.zip"
      sha256 "cb171b88cb09377ccedf4b9e432f78eab0353b15611ad9a829963299cdc4f1ab"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1378/cos-linux-arm64.zip"
      sha256 "358c512a724948b9c339930a6f1f61ea0f4dcc3a93e92bab2cdbf75f9cce69fc"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
