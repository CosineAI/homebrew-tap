# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1341"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1341/cos-darwin-arm64.zip"
      sha256 "2806ea0b2f4571a2c1c8d4463fc464f593218e1d21035493f868788bfe9f0150"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1341/cos-linux-amd64-glibc2.35.zip"
      sha256 "88984ab0bc08a3ad4a8ac06681cbb339fff28c95c7ce73339dd38a66398fc494"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1341/cos-linux-arm64.zip"
      sha256 "3f671422df0c77f936ea3ab6fb83381c2921ada9fdfe69d6a46516044a59ccae"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
