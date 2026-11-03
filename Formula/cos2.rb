# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1372"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1372/cos-darwin-arm64.zip"
      sha256 "9e22a6fac4c42ec30e601540a5e35327f565d18e964b6d5303abdaf149c638d4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1372/cos-linux-amd64-glibc2.35.zip"
      sha256 "992ba8b9517f9b51a047ac57968f4873a2376947c7675315d6270905ff2e8f00"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1372/cos-linux-arm64.zip"
      sha256 "09670a6b4981beee9e8690dae7228e8350d18e1ac2bce38a195725eadafd59fa"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
