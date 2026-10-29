# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1347"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1347/cos-darwin-arm64.zip"
      sha256 "eb63a9729cf5e7bb843c5f6fb36dde159cd2100fb88279c29357ba6d9f2d46b5"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1347/cos-linux-amd64-glibc2.35.zip"
      sha256 "3d9bb0092ce7feabc8f8198951117df7cf22726c8d26ffb326082b8e0928d7f0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1347/cos-linux-arm64.zip"
      sha256 "823c402a23c3056350cd2215856fe13782a98f7c997b87b98c481df524396c20"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
