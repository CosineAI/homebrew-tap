# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1485"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1485/cos-darwin-arm64.zip"
      sha256 "d9cb33a96ce6499b131f0050c39c39beb2c9940f9599d1952f9351d4aedf3cde"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1485/cos-linux-amd64-glibc2.35.zip"
      sha256 "912810520473de4f2204a65020b4c455a0c4b3dcf4032778f6061f93faaea9e6"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1485/cos-linux-arm64.zip"
      sha256 "0343eacdda917b7587c6cb3b7f0c87869c964d084dc026d0cd694bdc8d830090"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
