# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1242"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1242/cos-darwin-amd64.zip"
      sha256 "b5f72ae49a508bafc73479893ac66aee14059e8cfe91ec88ed5d4989e79394db"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1242/cos-darwin-arm64.zip"
      sha256 "536b307941a36f2b406b24d051aa3f7f9e6f875db83836992618dbefea466505"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1242/cos-linux-amd64-glibc2.35.zip"
      sha256 "3ed0cad583b08295b10df10312b30c514e9ba9b5f9f69861875bce5e22d8105a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1242/cos-linux-arm64.zip"
      sha256 "f759589316af68c6ad93ac04379910a201c92827524dbfbdca9a599d915e0a17"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
