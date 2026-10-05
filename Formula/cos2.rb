# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1228"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1228/cos-darwin-amd64.zip"
      sha256 "d5aed18f355af6949cde5ef7ef666cfd0596ee9133c46852f0cd33518fac9f3d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1228/cos-darwin-arm64.zip"
      sha256 "dd2cc9306b9934c521c884b316cf344b5b19cbb8b14b9703a9c012980a63992b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1228/cos-linux-amd64-glibc2.35.zip"
      sha256 "35fb695ebc20dce4a0bac393570ce89e28efdaab51ffbe2df22952a5d0b1e12b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1228/cos-linux-arm64.zip"
      sha256 "6d83ba748fab0699ea75ae6b8f09dc6f81b566c4d929d0da3be10646eacb6ce2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
