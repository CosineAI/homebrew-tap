# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1235"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1235/cos-darwin-amd64.zip"
      sha256 "4badeb2fe19ee29b059307871072dee9c2a8a8d1d0cf84e67ecc3d2357d4a704"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1235/cos-darwin-arm64.zip"
      sha256 "bd7dab6d7a22938e9a7579808589f36c865893dccafe16a0e6ac2d9875120a52"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1235/cos-linux-amd64-glibc2.35.zip"
      sha256 "6e0a2f5cdddec620686298a76db2925a73d4742e35aefcadd0b0d49f3eb3298a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1235/cos-linux-arm64.zip"
      sha256 "772dfd8365233fd27f31c4fd032d8d2d00e0ed5e433f5db7ba579a31efe81225"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
