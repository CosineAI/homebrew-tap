# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1328"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1328/cos-darwin-arm64.zip"
      sha256 "b4887a7cd1be4849df4938e3e9a109015ce8662d61f12bb1696700043c931c65"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1328/cos-linux-amd64-glibc2.35.zip"
      sha256 "ca62a45825fcf6798e8eadd58de03c9204993809378e98f56a5d7671f4419d47"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1328/cos-linux-arm64.zip"
      sha256 "fea3d659728a54768873471279817419de98d6c76b5699a691f6af7be276a1cf"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
