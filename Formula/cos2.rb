# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1398"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1398/cos-darwin-arm64.zip"
      sha256 "95b19daf45a6c9dade490a1f882fcb4a46021f0437fb01ec4ae02b0e7db19255"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1398/cos-linux-amd64-glibc2.35.zip"
      sha256 "2dd9f232ded11f873fba9b8a41700de82ad8088a48619d006e9161f53f54fd86"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1398/cos-linux-arm64.zip"
      sha256 "8d9fef86556f924d47cafa193fedddc1b4daf42722236e7fa94f952d672eddd7"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
