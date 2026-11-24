# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1493"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1493/cos-darwin-arm64.zip"
      sha256 "3ff5f5e9cc824091ec24a8fb205e146e4cb28965aa5ddf57d4c89f2a81b17cc5"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1493/cos-linux-amd64-glibc2.35.zip"
      sha256 "26a5dcfc86b6bd7f05b3d9b48d15a80c3a83c44cedec79ff49bc95e466d4eb6e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1493/cos-linux-arm64.zip"
      sha256 "2872b6d40d50913a156c75186a4c4df398154649bb7787595404dfa5a32c4a9a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
