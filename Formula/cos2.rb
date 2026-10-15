# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1261"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1261/cos-darwin-amd64.zip"
      sha256 "3d0aa75ee708ab5be006b52cde2b0de97c3e36688942dfd5355fa844a6583f8f"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1261/cos-darwin-arm64.zip"
      sha256 "a378e8b7365513f2ed66f53cd130a9487dedc25c67958c1041704dad332d5279"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1261/cos-linux-amd64-glibc2.35.zip"
      sha256 "0a38c30aed52a25f1f41ce4f08d3ec39c537b60ee02396927e935c92975a93ea"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1261/cos-linux-arm64.zip"
      sha256 "ccc8584a56deb0e0959f05df92a488f93964b1e4b2ff7654dbdb46b35fe75816"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
