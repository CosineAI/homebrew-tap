# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1303"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1303/cos-darwin-amd64.zip"
      sha256 "2a892850a24635cb4ec469ead2549bebe65f92f34682400389a835387e498f4b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1303/cos-darwin-arm64.zip"
      sha256 "3bd60e4809f62fdb60f0ef609c35c57cb260e063b7445fa93fa8dc873c96be0b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1303/cos-linux-amd64-glibc2.35.zip"
      sha256 "26b3e1d50d24b9c1330f76d83a903f76d48c2cd04eb423eb086f9e2facfa9653"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1303/cos-linux-arm64.zip"
      sha256 "40e3b9ba1aca98321b82b4bddccb338c67fc9f6698c75bcb09256543fd97e7f6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
