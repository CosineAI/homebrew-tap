cask "cosine" do
  arch arm: "arm64", intel: "x86_64"
  version "0.1.2"

  on_intel do
    on_linux do
              url "https://github.com/CosineAI/cli/releases/download/0.1.2/cosine-darwin-amd64.zip"
              sha256 "4cc6351f20199a347a90da7dff62592a998590b0bf2efd211e2f50a9b6892258"
    end
  end
  on_arm do
    on_macos do
              url "https://github.com/CosineAI/cli/releases/download/0.1.2/cosine-darwin-arm64.zip"
              sha256 "440532a7a230e7c6491bb3c1255000a45b5d71a3100eae8001c5057a4e861052"
    end
    on_linux do
              url "https://github.com/CosineAI/cli/releases/download/0.1.2/cosine-darwin-arm64.zip"
              sha256 "440532a7a230e7c6491bb3c1255000a45b5d71a3100eae8001c5057a4e861052"
    end
  end

  name "Cosine CLI"
  desc "CLI for granting Genie access to your local machine"

  depends_on formula: ["fzf", "ripgrep"]

  binary "cosine"
  binary "cosine", target: "cos"
end
