# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1324"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1324/cos-darwin-arm64.zip"
      sha256 "3532585c1d2b83f591ddf3e5840467fbd18ea2d26450141619893834c47f9b6d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1324/cos-linux-amd64-glibc2.35.zip"
      sha256 "49196ce1c0f3b334a0a65699e2e530c004f2e053c9f6e663437677839dc8403c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1324/cos-linux-arm64.zip"
      sha256 "377e50c063d80a852dae7b878a6f125f7f68a114527e01dac9552c486bdb4366"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
