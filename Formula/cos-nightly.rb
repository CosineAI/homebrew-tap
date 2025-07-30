# typed: false
# frozen_string_literal: true

class CosNightly < Formula
  arch arm: "arm64", intel: "x86_64"
  version "nightly-117"
  licence "Apache 2.0"

  on_intel do
    on_linux do
      url "https://github.com/CosineAI/cli/releases/download/nightly/cosine-linux-amd64.zip"
    end
  end
  on_arm do
    on_macos do
      url "https://github.com/CosineAI/cli/releases/download/nightly/cosine-darwin-arm64.zip"
    end
    on_linux do
      url "https://github.com/CosineAI/cli/releases/download/nightly/cosine-linux-arm64.zip"
    end
  end
  sha256 :no_check

  name "Cosine CLI Nightly"
  desc "Nightly builds of the Cosine CLI"

  depends_on formula: ["fzf", "ripgrep"]

  bin.install "cos" => "cos-nightly"

end
