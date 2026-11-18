# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1448"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1448/cos-darwin-arm64.zip"
      sha256 "b4f8fe1ff86d8693480fa2bd14f725afdfe6ad52e3e21134610bbef269d6df1c"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1448/cos-linux-amd64-glibc2.35.zip"
      sha256 "5f81c9495840526d5966b1e21a169795cc9d2ac2ea4ee1130cd774f29288b391"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1448/cos-linux-arm64.zip"
      sha256 "997b44db3065d198af9baa878a79c85982b850ae584b7a22bd9a62a1274c0fd3"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
