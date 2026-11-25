# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1512"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1512/cos-darwin-arm64.zip"
      sha256 "ca416deaef13bca49e7546728194712f8ebc2a412e96e2ee6bf03f933879da79"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1512/cos-linux-amd64-glibc2.35.zip"
      sha256 "856e826589e3735b97a2f057a8e268e004914c34845dcf627b5b8efe96179614"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1512/cos-linux-arm64.zip"
      sha256 "69637cdcfb4a6574f74157f89ae68de7774910472ad9e94c33dc947e3c9ac4f0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
