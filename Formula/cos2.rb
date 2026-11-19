# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1462"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1462/cos-darwin-arm64.zip"
      sha256 "b9570b8e8cbde414d3fe9c6257214460622dc7a7631ab2f47b2bb6a80efe9a74"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1462/cos-linux-amd64-glibc2.35.zip"
      sha256 "c44673a3c150366627fc6f4838b9c7b62da219292a3596b0758eff457a77f596"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1462/cos-linux-arm64.zip"
      sha256 "4955664718652c36cbabaad561df3912fe9aa2e222e2c55dd58dfcc64b212047"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
