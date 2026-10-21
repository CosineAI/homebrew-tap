# typed: false
# frozen_string_literal: true

class Cos < Formula
  desc "The Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "2.0.32"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/release/2.0.32/cos-darwin-amd64.zip"
      sha256 "c761cb205df55fba941ff46145cec5b90676d87d4399036fc7929d920648cc96"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/release/2.0.32/cos-darwin-arm64.zip"
      sha256 "1dcce02882be556e62e065bd46ddd64df6e23147bcb86ac6b179a29ad4f8c304"
      def install
        bin.install "cos"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/release/2.0.32/cos-linux-amd64-glibc2.35.zip"
      sha256 "a1e50aa12bcaf8effa2953b68176bf767183247c3604ec1bdc0d9ef32c7ee09f"
      def install
        bin.install "cos"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/release/2.0.32/cos-linux-arm64.zip"
      sha256 "1250b214d5d273681822162f84e4798d0aeb69126e6e697cfa92a616a9f08799"
      def install
        bin.install "cos"
      end
    end
  end

end
