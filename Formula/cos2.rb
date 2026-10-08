# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1241"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1241/cos-darwin-amd64.zip"
      sha256 "2c7c22cac3cede7e9b7c861f56cbd9401ad23b4e2749d4f942477b7e0e318888"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1241/cos-darwin-arm64.zip"
      sha256 "754594b31bd93047dbbd88035f9198a011d8a2199222b19d631b445d53bcc676"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1241/cos-linux-amd64-glibc2.35.zip"
      sha256 "68f624553cf00573b418a192a26eec24f8898f89721c036c023a42e831b00b19"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1241/cos-linux-arm64.zip"
      sha256 "9683ab0767bf16accfebcf7b8cf904ba377fcfa9c92af485587b269377e16fcf"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
