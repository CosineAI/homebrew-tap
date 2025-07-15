cask "cosine-nightly" do
  arch arm: "arm64", intel: "x86_64"
  version "nightly-92"

  on_intel do
    on_macos do
      url "https://github.com/CosineAI/cli/releases/download/nightly/cosine-darwin-amd64.zip"
    end
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

  binary "cosine"
  binary "cosine", target: "cos"
end
