# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1232"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1232/cos-darwin-amd64.zip"
      sha256 "c8c86d289b1bb41dcfa1786a85c28ac8ec1f039437969dd807c5b3c794cd896c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1232/cos-darwin-arm64.zip"
      sha256 "1b93f76b0579e09525c4ec14bb8a28dd558840b357883511e0251ada860f2a91"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1232/cos-linux-amd64-glibc2.35.zip"
      sha256 "6c8ce7c580a0a78561b9a71cc7ac74ac1097ae8bc5d83c95e16a025c2f68e942"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1232/cos-linux-arm64.zip"
      sha256 "c7543a81aa3937de055fbfa4afdebd2b63e565ac570e4d567e683b386cf13c50"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
