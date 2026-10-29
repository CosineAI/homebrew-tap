# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1346"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1346/cos-darwin-arm64.zip"
      sha256 "5930f17607b2f1158970f77116f87af868874da6c48977f027be410318cd6c9a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1346/cos-linux-amd64-glibc2.35.zip"
      sha256 "1444689eab234bc08bdcd2bae039a12a7a3e2540d6bf76f0fe4c30d3d1ab8d95"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1346/cos-linux-arm64.zip"
      sha256 "446643e2312bc88da0110ab8906daf9bcf36546908b4e54f96981073c8ceb9ea"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
