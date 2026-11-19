# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1459"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1459/cos-darwin-arm64.zip"
      sha256 "a4e4e7dccf7969bf67f60885b8208ae57ca94a8f9a8516cb7152ddcd56b7a6f0"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1459/cos-linux-amd64-glibc2.35.zip"
      sha256 "778d33132a2c986708f5306ab5b90ea12c7ba57aad505bd8a8c04760ede20ec5"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1459/cos-linux-arm64.zip"
      sha256 "ee70db35ee74f9db1be3fc0bc0f216aaca146d89cd7834e582b0cfd8debdbe7d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
