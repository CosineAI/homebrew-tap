# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1411"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1411/cos-darwin-arm64.zip"
      sha256 "a756c98bc13d4488e4102e3dd75f45a7446a61c05a518dad1b1304b7080cb638"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1411/cos-linux-amd64-glibc2.35.zip"
      sha256 "1cf5f286bd4dbc30830d1ae6c8f7747f0e0a2b98733e9560ec14f75d06ebb0b7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1411/cos-linux-arm64.zip"
      sha256 "bed7fa9d21e3344c216a5fe75ac91666d4429eeb5885186e80d2fa6ce144f9bb"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
