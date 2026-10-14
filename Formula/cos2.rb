# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1254"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1254/cos-darwin-amd64.zip"
      sha256 "6b112c53734c9cc63bc59377babb0e49644e450e86adaa845669054ebd95fe7d"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1254/cos-darwin-arm64.zip"
      sha256 "0b09db6a8fc070870deee0a4fd8118acada2043a9593c84b08e8a5e4efe60007"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1254/cos-linux-amd64-glibc2.35.zip"
      sha256 "f2f3be5f280caf69671942a39ef8d0457436e857254cbf42d5fbd727bdb164cf"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1254/cos-linux-arm64.zip"
      sha256 "841f26dfd3bee3f093722a990f338dfcca3ed9d6bdb762c2ff4d7f525730400a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
