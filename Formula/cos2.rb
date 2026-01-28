# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-46"
  license "Apache 2.0"

  depends_on ["fzf", "ripgrep"]

  on_macos do
    if Hardware::CPU.arm?
                                                                                                                                                                                                                                    url "https://github.com/CosineAI/cli2/releases/download/nightly/cos2-darwin-arm64.zip"
      def install
        bin.install "cos2" => "cos2"
      end
    end
  end
end
