# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1465"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1465/cos-darwin-arm64.zip"
      sha256 "890f5eebdc1bdfebd6109a348a07949763f87fa0890a74f60ac0c4fdc424bb43"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1465/cos-linux-amd64-glibc2.35.zip"
      sha256 "31f8c895c100024215c75a4b23bd4eafd92938b98d6dd6e30ba7053a5aa15380"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1465/cos-linux-arm64.zip"
      sha256 "56775cf83f554ca2cbcbd8b24e6186d65362c56082690e9a16d57773fc82f707"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
