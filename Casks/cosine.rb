cask "cosine" do
  arch arm: "arm64", intel: "x86_64"
  version "0.1.1"

  on_intel do
                                                        url "https://github.com/CosineAI/cli/releases/download/0.1.1/cosine-darwin-amd64.zip"
                                                        sha256 "f9cbf9c86ced7101f04c60be29e39a050ac6efec70c59d8dd84ad51d35ff69e3"
  end
  on_arm do
                                                        url "https://github.com/CosineAI/cli/releases/download/0.1.1/cosine-darwin-arm64.zip"
                                                        sha256 "70fc97a62e577baeb1dbdd398d832da495ab8b94188b5ba09bc65473b6bc1492"
  end

  name "Cosine CLI"
  desc "CLI for granting Genie access to your local machine"

  depends_on formula: ["fzf", "ripgrep"]

  binary "cosine"
  binary "cosine", target: "cos"
end
