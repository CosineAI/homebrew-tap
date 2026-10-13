# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1249"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1249/cos-darwin-amd64.zip"
      sha256 "2b069b47b2977ed0c0cd942d70cccfbf4a88389e243640af1b977789ea559c33"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1249/cos-darwin-arm64.zip"
      sha256 "0ac42d7adc2407da6698a3fac9302ec976859500d8733f6215ca361c6b69da76"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1249/cos-linux-amd64-glibc2.35.zip"
      sha256 "cf11d36cf5523ae910ad3ac81cd3fc103a45e49a98298f28a7b8d1d15c193cf7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1249/cos-linux-arm64.zip"
      sha256 "090759c00eca2246edf2fef51686364f496a05b3e6b8f519a63b09b74fd69ebd"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
