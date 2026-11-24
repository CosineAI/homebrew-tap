# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1491"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1491/cos-darwin-arm64.zip"
      sha256 "989af46655d81448717cea63899a66f2f68ab36a05319ca1636bbad98bc83451"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1491/cos-linux-amd64-glibc2.35.zip"
      sha256 "41c530c85994fed8d05cfeee5cad5a4e17ce46e0c4066fd2242cb61d509e705c"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1491/cos-linux-arm64.zip"
      sha256 "055e31d31225c6b75b70c00810873587be2d698ceb9febdbe3b5feb726e52592"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
