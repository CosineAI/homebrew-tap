# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1523"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1523/cos-darwin-arm64.zip"
      sha256 "50538d6a55d35ce241ef7339c66980b96be564f2522f0d0540afdf6835314449"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1523/cos-linux-amd64-glibc2.35.zip"
      sha256 "18bc866e5d2cbbcbb36f2be24c212d7ef811c9232c650b25b3336d9dbbe72ebb"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1523/cos-linux-arm64.zip"
      sha256 "f4606bbd2d5ff46675da89d9f29e1a2d11ba9c46e342250ab0a3fbf091923304"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
