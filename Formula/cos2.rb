# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1299"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1299/cos-darwin-amd64.zip"
      sha256 "e8a53e920001d02442a770df1b0f464c6f428dde08e35f066f3b9bf13e10782c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1299/cos-darwin-arm64.zip"
      sha256 "69151ecc84ec41c25fcfa761da1f60dca4d4ee70bbd3defe4d8837a82eb1a5d9"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1299/cos-linux-amd64-glibc2.35.zip"
      sha256 "6c557bb94e1514f578d578c60d73367ae5f6655f296d7b0cb44a9429c8c54fcf"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1299/cos-linux-arm64.zip"
      sha256 "44ff216e692d57fbc4f0f6fcaf95e9a4e7c7481d485215d75f4acc5bdad71b7b"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
