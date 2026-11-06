class CosBeta < Formula
  desc "Beta builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "2.0.33"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/release/2.0.33/cos-darwin-arm64.zip"
      sha256 "b322910a513930afef87f8b3e65c67932b3e473e80768d1cf5ea8d5caf09a111"
      def install
        bin.install "cos" => "cos-beta"
        (prefix/"Resources").install "Cosine Computer Use.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/release/2.0.33/cos-linux-amd64-glibc2.35.zip"
      sha256 "325e457191b463b2d28df96d526728ee73eab1d2561b19d41f6b13338696ad74"
      def install
        bin.install "cos" => "cos-beta"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/release/2.0.33/cos-linux-arm64.zip"
      sha256 "1c7769b05c73e2e729850ab8a26c7f9576e7c6d8b4609a5306578b725452881c"
      def install
        bin.install "cos" => "cos-beta"
      end
    end
  end
end
