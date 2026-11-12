# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1426"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1426/cos-darwin-arm64.zip"
      sha256 "520ce56e097e523c3edb016ec30a6722dac629277ffaece04fc68a027af256a4"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1426/cos-linux-amd64-glibc2.35.zip"
      sha256 "0e17621891dd4b57d2db593b1255ac1c559458c6ac60d51cde5343b5b9b450a1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1426/cos-linux-arm64.zip"
      sha256 "04ec6def9ad0b4fd0cba2852060a71b2f78fb725cf68cc201fbab5c72581926e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
