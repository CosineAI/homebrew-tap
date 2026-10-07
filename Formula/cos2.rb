# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1237"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1237/cos-darwin-amd64.zip"
      sha256 "bb804c02c50c11ab772b50689cd9b316fea0cfdb04dedd72e0a33ef5e36d7d7f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1237/cos-darwin-arm64.zip"
      sha256 "ee0d0a83dddd47de28018692c5f6c60b005abba9f4e14c4dc0ca657fd534e1b6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1237/cos-linux-amd64-glibc2.35.zip"
      sha256 "6f1efa5f364ecafc16fc70bed5f8d0dff42e97229af9f022d22d9c7d5bcf89b7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1237/cos-linux-arm64.zip"
      sha256 "b14aa7a0328dbddc0c6153ae80126ef86e91cce1c5f6f8f2e6360e0652a61626"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
