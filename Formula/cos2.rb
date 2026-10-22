# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1295"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1295/cos-darwin-amd64.zip"
      sha256 "e1872ae77b76b9e5842a9774b1c3350bb4831420652523fd3ecdad14e0008720"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1295/cos-darwin-arm64.zip"
      sha256 "bbac1cd4a690bdb35b3e6a7c4a4770eda112f1c643d4999b697a586c808d329d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1295/cos-linux-amd64-glibc2.35.zip"
      sha256 "55017d660082c92b50742990bffd7c25e90010f3e87a81ab5864c52a7105a067"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1295/cos-linux-arm64.zip"
      sha256 "5dd9c62cb00c23cf56fe93761ca48971b38e7b8c3ba76df5b9788b357563b0cf"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
