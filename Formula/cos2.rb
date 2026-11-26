# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1515"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1515/cos-darwin-arm64.zip"
      sha256 "dea8f4580bbb7496a9f82cb7e51d8409c0e375cfd26749771a11a64ae5262c62"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1515/cos-linux-amd64-glibc2.35.zip"
      sha256 "24b27ebd0b5b05ddb854dea440b8078f3b5e04f63874e84f2ff713e1c5994dbb"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1515/cos-linux-arm64.zip"
      sha256 "c051277bcdecd2ca31f56170342dc652c1e2b688893929f464ae5fc99ff2bdd0"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
