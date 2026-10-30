# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1353"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1353/cos-darwin-arm64.zip"
      sha256 "d3b2add3e0caa769f0859a6dc8e7f4e58eedc306656b93908fbf154aa4f710ad"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1353/cos-linux-amd64-glibc2.35.zip"
      sha256 "a9cb194e16b10e1b9d982646b62d87004849763d44ab15673a6e8495d6cb08e0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1353/cos-linux-arm64.zip"
      sha256 "48fd04695004571634fb7cf87d6753d37f79207045ea91c5a947736daae8d66f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
