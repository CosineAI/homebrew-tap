# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1325"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1325/cos-darwin-arm64.zip"
      sha256 "8a443ed100bd4367f58c56a0490adaf14218a23c41fcb072478c4c517ed4dcc4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1325/cos-linux-amd64-glibc2.35.zip"
      sha256 "82e5a94ae1f67ad08b32347844c2e9a0ab81d8d6c4aab3f88a870f906c9ce4b5"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1325/cos-linux-arm64.zip"
      sha256 "a49b4e4b2aa98d0e2e5a9d31abc940c9f31f2f80e9622137f179bac2376e3e9e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
