# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1311"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1311/cos-darwin-amd64.zip"
      sha256 "2930ea99e7d7366cfb6b212d90a9b28d10c1c2623cc0b16080e0c36e945ab911"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1311/cos-darwin-arm64.zip"
      sha256 "d3a1e1c6a83d156f371bf18878e35d25d030220001dd5e20d8f18343ffc0a8a2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1311/cos-linux-amd64-glibc2.35.zip"
      sha256 "49c8f9d7b9cbc77f250117ad2855f034218c64bb3e6ee5ad28b9f37c3fe113ca"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1311/cos-linux-arm64.zip"
      sha256 "e99b32c082118d1ef11cb8bed06080041773100d114ea642a5e1a13876992d89"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
