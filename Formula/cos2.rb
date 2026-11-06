# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1393"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1393/cos-darwin-arm64.zip"
      sha256 "6d033f6de94e016e8e257472b4ad991805311b0111aa513c3f204ff4fa67244e"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1393/cos-linux-amd64-glibc2.35.zip"
      sha256 "0406de7766e3de308baa651d0258d290e4044410421b1370b569ffbce22256a8"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1393/cos-linux-arm64.zip"
      sha256 "99b441ec24633f8fe94ae1aa6aae00cf44da4a2f4f9afbce3faf77808e6743b4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
