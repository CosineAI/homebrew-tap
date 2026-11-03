# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1366"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1366/cos-darwin-arm64.zip"
      sha256 "5f565f65de78529f61e548b8e244b725459ca6a435cb1b2462c729c813f4d0ea"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1366/cos-linux-amd64-glibc2.35.zip"
      sha256 "99b6c89b9a36caf3e798affb47fb4506dc98304a2d4c64f4eee70196ed5da4df"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1366/cos-linux-arm64.zip"
      sha256 "25fdf959df2b15bdee58c96d3b4d8850f253a4bcf69db09bd31299b6cfce5f40"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
