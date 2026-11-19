# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1464"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1464/cos-darwin-arm64.zip"
      sha256 "cb187fdcb973fdec65a60026fff6b2555c7f299051af9369643e2440abb191f6"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1464/cos-linux-amd64-glibc2.35.zip"
      sha256 "446526b6576361f58ac8fae88ca9b1c8c87522f9a5d9686ee751ef4aa4a2b306"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1464/cos-linux-arm64.zip"
      sha256 "709bd8689a5db8588f3d459bcc22f9261d5ef8be3e2fe83df4fe56320375138a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
