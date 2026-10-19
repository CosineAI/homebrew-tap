# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1268"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1268/cos-darwin-amd64.zip"
      sha256 "32976f3f6ecd45367c60f709d3ff7ec54ff2a67a77e3753c2d2d138f9b7de8e3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1268/cos-darwin-arm64.zip"
      sha256 "54a00db3ac4704cf29fff0fe6ff2ad42e421fc1a7ae95d19092592f32d27c77f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1268/cos-linux-amd64-glibc2.35.zip"
      sha256 "eb6684704ba3b93df94de0792072f898bd000b0e54f87219f701e70bb216146a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1268/cos-linux-arm64.zip"
      sha256 "c666587ab7cb3c0859888aa8326c57e45a8372cc079ced8d6d7b1c2cb6791d42"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
