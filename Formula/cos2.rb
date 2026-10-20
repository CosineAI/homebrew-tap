# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1277"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1277/cos-darwin-amd64.zip"
      sha256 "1ac9fc85e66ce5ce7bf369c00fb40250c7a25bf56e0668b9aad2ccf3f4632c93"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1277/cos-darwin-arm64.zip"
      sha256 "e37e058ce13c664555efa74936b82c20d1fe047bbb567cfb23e2bbb3e68403b6"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1277/cos-linux-amd64-glibc2.35.zip"
      sha256 "b85b46ce364246297894e14f25c5148db39ae561ad5c5333ee4fcf5038104feb"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1277/cos-linux-arm64.zip"
      sha256 "df40b8b017f824f925715be586ffa24032ee9b93c38dacc9890b88081e008d40"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
