# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-400"

  on_macos do
    if Hardware::CPU.arm?
            url "https://software.cosine.sh/cli/nightly/nightly-400/cos-darwin-arm64.zip"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
