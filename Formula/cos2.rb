# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1270"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1270/cos-darwin-amd64.zip"
      sha256 "f93a13c6fba7913285069cc4c54883fd54f6e34e780f02424615964424bec28a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1270/cos-darwin-arm64.zip"
      sha256 "115f92b220dcea17af5d7941c108faa62a11df7b4a48b1c7a45170057539c45d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1270/cos-linux-amd64-glibc2.35.zip"
      sha256 "ab8ffe7b3f7f013865445aac27715e6154fb71192aa83646d7a1739bd8e965c6"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1270/cos-linux-arm64.zip"
      sha256 "4b66857f0b864d8ccbad345b97f6d2af7344f4c80b98dcff47ced66108f1648b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
