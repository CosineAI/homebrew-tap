# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1296"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1296/cos-darwin-amd64.zip"
      sha256 "1221dcbb391816e23c46b59fa9c2e3a46dd2525771a700739709711c906e43c1"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1296/cos-darwin-arm64.zip"
      sha256 "485d464ae3f00f17692b5c216e93b47ba4627ee13ab9f0da3a6425b348c4002c"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1296/cos-linux-amd64-glibc2.35.zip"
      sha256 "253a1b7045d195489cae8cece1164c4883b7ef739437423b80c3ec41569e163a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1296/cos-linux-arm64.zip"
      sha256 "66ddeef23ea2b7a8ec7be516d5c3418d74ae1746b31335ce5dc9fc5832ae8afc"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
