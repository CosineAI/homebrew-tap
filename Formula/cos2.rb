# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1223"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1223/cos-darwin-amd64.zip"
      sha256 "a3dbefeb0c1c2cc894e27c7214642a8818392bedaa64b7878205f7377a3a4025"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1223/cos-darwin-arm64.zip"
      sha256 "02f4a6b506d28c898ada60e12b2fed0c9b0679749c36d26eba55a3b415de8929"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1223/cos-linux-amd64-glibc2.35.zip"
      sha256 "e339b982e182c9219080d6f286ca1688c80ea609ae51eefe3fddf2c7267df2a4"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1223/cos-linux-arm64.zip"
      sha256 "8bad3811c5019f0799ef85b836967924b731851e586131dab01e0b651410c6f2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
