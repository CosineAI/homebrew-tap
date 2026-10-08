# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1243"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1243/cos-darwin-amd64.zip"
      sha256 "9e8cc7f46511dd7259a925887fc15975876502ea7606495f65f3e97e36161c21"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1243/cos-darwin-arm64.zip"
      sha256 "2139ae6862eeedf5e5c3345035da4d1fcdb2839891a1d50d5fe2a27fc3f1bf37"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1243/cos-linux-amd64-glibc2.35.zip"
      sha256 "900998d3829fda5ff7e29db697994e3a64321b41c0e16ae698d7dd6e77c417da"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1243/cos-linux-arm64.zip"
      sha256 "fa02d0635404dd6ddfa9cc23838eb10757d233fcd1a5cb895a023eebf388ff4d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
