# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1357"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1357/cos-darwin-arm64.zip"
      sha256 "d419317921366165a78498b6b9f18e41cec31237ca6af6d9a3a2c061bd340d82"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1357/cos-linux-amd64-glibc2.35.zip"
      sha256 "aa5a2d5beddc38650d2dae9f2add236a2e37a704a77061f59ee4d5042c16f402"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1357/cos-linux-arm64.zip"
      sha256 "f3a53155436211abdb22df598b6c94540265bb134bba01e7bd662b42789179f6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
