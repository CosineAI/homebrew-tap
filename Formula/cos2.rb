# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1486"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1486/cos-darwin-arm64.zip"
      sha256 "5ac0f990c0108a128356d834b0440801ab22d696f6a40f9969b1a519e6180887"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1486/cos-linux-amd64-glibc2.35.zip"
      sha256 "1fc2d598d6b057bf09711fcfce442e550436a7e60a714747b90bcd3e65486cb3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1486/cos-linux-arm64.zip"
      sha256 "32ee598a426ad300f321fb8068d8144d9a4fff358d01c1f6bbe36d5931df2070"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
