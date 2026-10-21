# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1284"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1284/cos-darwin-amd64.zip"
      sha256 "71eb013563783c7c1e2ae31dc0d6260485035831d5fae34747628ec761004296"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1284/cos-darwin-arm64.zip"
      sha256 "a1e04037aa40e8739e00ef05b87dfa3be2b4882d3e3a823a7705b2e74d320d37"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1284/cos-linux-amd64-glibc2.35.zip"
      sha256 "af0403591370b720f46475fcd912249afa9ad16cbc3df7db280d3b746180d615"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1284/cos-linux-arm64.zip"
      sha256 "f125a45f867ee9ab2174a601781da96c3ca018504fa2ad8b22c9b93e6f597ccd"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
