# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1521"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1521/cos-darwin-arm64.zip"
      sha256 "f1186f4e979eaaf89636fed85aa4428db705c0d6286546b5bdc7028d492d2c7f"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1521/cos-linux-amd64-glibc2.35.zip"
      sha256 "fb1064f8ccb8e6f696cae87c471f33891892213d36e34b385c1dfe97056c126d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1521/cos-linux-arm64.zip"
      sha256 "801597445c2a6e6b744a001c873405ebc3c6381237d5268919ff1334f2855cfe"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
