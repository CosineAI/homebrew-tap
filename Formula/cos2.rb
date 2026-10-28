# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1330"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1330/cos-darwin-arm64.zip"
      sha256 "61ee14426b17027b586ccca2eaed1fce4fa8627f1a6b380fa51b6875411f3f10"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1330/cos-linux-amd64-glibc2.35.zip"
      sha256 "b55f08ac9e80e9003ebf5ffd1b26fec4cf123a9c4b4796ed11415e343bd5e6f1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1330/cos-linux-arm64.zip"
      sha256 "96fbaa81690eb24c3188ce3614f7606f732b3306b78fd06070925d0d370f46c5"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
