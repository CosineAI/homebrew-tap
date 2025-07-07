cask "cosine" do
  arch arm: "arm64", intel: "x86_64"
  version "0.1.1"

  on_intel do
    on_macos do
          url "https://github.com/CosineAI/cli/releases/download/0.1.1/cosine-darwin-amd64.zip"
          sha256 "f363ac354250ca53e76caf1582a6eb2728880dc4ae389acfbe7992a01aab4a57"
    end
    on_linux do
          url "https://github.com/CosineAI/cli/releases/download/0.1.1/cosine-darwin-amd64.zip"
          sha256 "f363ac354250ca53e76caf1582a6eb2728880dc4ae389acfbe7992a01aab4a57"
    end
  end
  on_arm do
    on_macos do
          url "https://github.com/CosineAI/cli/releases/download/0.1.1/cosine-darwin-arm64.zip"
          sha256 "4ed93ad77d8c248b7091842ac043edbb7926b06749a5fdf188d9ed5919642c13"
    end
    on_linux do
          url "https://github.com/CosineAI/cli/releases/download/0.1.1/cosine-darwin-arm64.zip"
          sha256 "4ed93ad77d8c248b7091842ac043edbb7926b06749a5fdf188d9ed5919642c13"
    end
  end

  name "Cosine CLI"
  desc "CLI for granting Genie access to your local machine"

  depends_on formula: ["fzf", "ripgrep"]

  binary "cosine"
  binary "cosine", target: "cos"
end
