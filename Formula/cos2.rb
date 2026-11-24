# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1494"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1494/cos-darwin-arm64.zip"
      sha256 "50364707aa659d61c234240f2b3d45c57449484ba29e1e82647964cc37ac7d05"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1494/cos-linux-amd64-glibc2.35.zip"
      sha256 "afe7a2c31aa6dc7fa8ae410d16c79055fd6599fd36262cfbbc18a89f1f1840c7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1494/cos-linux-arm64.zip"
      sha256 "adf5021c7144a58c366f351b95008d7f193082d8894908acd55a6290a0722164"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
