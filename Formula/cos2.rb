# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1327"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1327/cos-darwin-arm64.zip"
      sha256 "a9b3a4b93aaef6cbf9b961f82985ecb0453b7c86656d9829fb65e0734ce7204a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1327/cos-linux-amd64-glibc2.35.zip"
      sha256 "befa111ba994b2570013b589c49b36177b8fb6c796ef5c62acd6a16c20920637"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1327/cos-linux-arm64.zip"
      sha256 "4401198aa964a36427ef99e6edea6c2106319ce83dec82376e96245d4e72a406"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
