# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1474"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1474/cos-darwin-arm64.zip"
      sha256 "b4f121df60897e0f35313decde71f8fc7ea376b31282c36d37b5cefabeb7751a"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1474/cos-linux-amd64-glibc2.35.zip"
      sha256 "268707fc2fa8b21abe0a84679e96f0c68cd60dd1b2ff212e28df72b97fef056a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1474/cos-linux-arm64.zip"
      sha256 "8f3f65626788d9145bf33079867ba3aabb1efd752685c515e43a066a11e87d07"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
