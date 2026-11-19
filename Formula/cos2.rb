# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1456"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1456/cos-darwin-arm64.zip"
      sha256 "a30cfb80915f03973322215d12c4a92c0fa7b5362ed6090ff9fe0c45d88413e2"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1456/cos-linux-amd64-glibc2.35.zip"
      sha256 "2936db90187f93359f5f84bd3d7a8f79a23cd7e05357c04d8919559523d096d7"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1456/cos-linux-arm64.zip"
      sha256 "3aeb0f2e9cb6833d52411eac49e0628bfd862599c4dcc1e50cd82845c132e195"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
