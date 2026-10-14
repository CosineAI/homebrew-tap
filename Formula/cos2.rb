# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1258"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1258/cos-darwin-amd64.zip"
      sha256 "996b9a99dd34b18145f59f285abe0ea288a677f504b49cea9eae66d17fe5a32b"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1258/cos-darwin-arm64.zip"
      sha256 "a8f4b9e546578989760a469e7593c483a3c862756877ff89eff11010e7b7e979"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1258/cos-linux-amd64-glibc2.35.zip"
      sha256 "e46ce09c6031f9baa35f2bbe94ba79855ec6685e2ce587cc2e78450f45905e49"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1258/cos-linux-arm64.zip"
      sha256 "4aadea44248dd4c218d43bc99c9196d832e65dd2e5e2afa6cd3e876f3d8cdcb5"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
