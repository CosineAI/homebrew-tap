# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1272"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1272/cos-darwin-amd64.zip"
      sha256 "5e5aaf8ee4b19317788d0adb8065ec42a34f14b7e943610dbb75250862ef0479"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1272/cos-darwin-arm64.zip"
      sha256 "21afa1e410d919a9b375316303bfa931976a2ca952e4e72f8c03db521b397e65"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1272/cos-linux-amd64-glibc2.35.zip"
      sha256 "671d1806fab6ad98e6880f08465921ec6d7ea30c605f8de19c1176e1be6b0eff"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1272/cos-linux-arm64.zip"
      sha256 "45098cb6260a4c40657e455c489b7de77fcf705bdf6df923bf40a99357687297"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
