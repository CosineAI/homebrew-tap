# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1282"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1282/cos-darwin-amd64.zip"
      sha256 "8755b575bb3adf918c7c0755196a1e4859fc1f6f62f0dc4c7ac0c3f411c8e256"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1282/cos-darwin-arm64.zip"
      sha256 "8f44287914b858d50f6d3ac878869d38de4501ebb62de25b1190fdd30e42c5a5"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1282/cos-linux-amd64-glibc2.35.zip"
      sha256 "c7c9d3356a32966ae0b089464f23dfc8cb0dd43b3d55988389b9a3329a8710c7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1282/cos-linux-arm64.zip"
      sha256 "927c3b97659a8a7a66b47cc315b9248dbe69b1db06da2e284b086fc76a1613dc"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
