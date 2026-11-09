# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1401"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1401/cos-darwin-arm64.zip"
      sha256 "85a81e25fcc8f7aba0b5aba4eba62f4cad1e0eff52d6ea8f6476baf19806329a"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1401/cos-linux-amd64-glibc2.35.zip"
      sha256 "ed6ba091565070a93e5f25dfb8f028e7016beec25059cf4278576ad386ecd797"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1401/cos-linux-arm64.zip"
      sha256 "eb724a0a08cea7d9cdd7a088e23efa00cf58084d7063f2bbaa2dbf4d8ae4503c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
