# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1510"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1510/cos-darwin-arm64.zip"
      sha256 "2babc512e265c34d44b4a891635ead505a3483a6cbaa144abdbc83f9bfbd8ae3"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1510/cos-linux-amd64-glibc2.35.zip"
      sha256 "84af059b417950ec6a81fe97604cac4c65de7ab17538ac9df6f51c903c48e8f7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1510/cos-linux-arm64.zip"
      sha256 "54753eab142d4a379665f4ffe55e08a45b7febb73121dc7355252474c8d8d5b5"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
