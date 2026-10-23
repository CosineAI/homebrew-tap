# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1298"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1298/cos-darwin-amd64.zip"
      sha256 "66b9534775fa6424b72f4d99d4cbd8c59988580ced79bc7e5ba700457fe6c35e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1298/cos-darwin-arm64.zip"
      sha256 "b8ea0f519199c3ae8e9cd315036b29fa530e0e32f76f4647ef37fed58bec3587"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1298/cos-linux-amd64-glibc2.35.zip"
      sha256 "d1215fbe852491d2a6365bf4278fb88602ce805851edd5e846a1e37220a51738"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1298/cos-linux-arm64.zip"
      sha256 "1ac7889511f9e84e4d15a386515443183aba8ec83d730eba047140207887d12e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
