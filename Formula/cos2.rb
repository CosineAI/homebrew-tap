# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1245"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1245/cos-darwin-amd64.zip"
      sha256 "d05b4e1f0c0a1de62585b0962dcc2da79d632cc3919a029e54074c4cef17620e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1245/cos-darwin-arm64.zip"
      sha256 "386105464375c4bcff61ade43b7ef9ee8084eac1cf073d683b97e67d946ce555"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1245/cos-linux-amd64-glibc2.35.zip"
      sha256 "41790724f1f46f5d2059d6a32cb6d3dfd83d5a815ec97bcf284e68df9d269c04"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1245/cos-linux-arm64.zip"
      sha256 "e162c7289c3341910b86ee7a3f0c912894ffb3357019aaaf0ba81f744d874eb4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
