cask "cosine-nightly" do
  arch arm: "arm64", intel: "x86_64"
  version "nightly-0"

  on_intel do
    url "https://github.com/CosineAI/cli/releases/download/nightly/cosine-darwin-amd64.zip"
  end
  on_arm do
    url "https://github.com/CosineAI/cli/releases/download/nightly/cosine-darwin-arm64.zip"
  end
  sha256 :no_check

  name "Cosine CLI Nightly"
  desc "Nightly builds of the Cosine CLI"

  binary "cosine"
  binary "cosine", target: "cos"
end
