# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1446"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1446/cos-darwin-arm64.zip"
      sha256 "447df8ded38f513b4c45e6b9402403c55489ef4ec2fec5ba5398994919d0aaf2"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1446/cos-linux-amd64-glibc2.35.zip"
      sha256 "e60ca20d1b3ef40fd1f161609836fd8fdcc4724f6da41ffbaeb6856401dc14f4"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1446/cos-linux-arm64.zip"
      sha256 "b5a522b992960269bf7165a4b5e7904c737118f5a654b293f626159f314dfd43"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
