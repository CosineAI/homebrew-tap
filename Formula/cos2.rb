# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1423"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1423/cos-darwin-arm64.zip"
      sha256 "0bc319be30c12240175cd801062ec5242f1465887d5a47faaca669c7791dbd82"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1423/cos-linux-amd64-glibc2.35.zip"
      sha256 "4d5bdca7597bdce3c1e83ead55def1e98d41bf3623d44be2aad5248e0d143eb5"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1423/cos-linux-arm64.zip"
      sha256 "634b798bc03be13509d25237b15f5fc7d8e1edad386816b8e8ce4e50d75b76fe"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
