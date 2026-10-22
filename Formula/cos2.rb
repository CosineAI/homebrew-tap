# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1291"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1291/cos-darwin-amd64.zip"
      sha256 "049fefb6513a3d9edb551e3159bd67d671e5c114f414231d0794c5754d43953e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1291/cos-darwin-arm64.zip"
      sha256 "ed981986d444091841bd64c5123bada1c47f5f497b55ceabafa6cecdfeaed24a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1291/cos-linux-amd64-glibc2.35.zip"
      sha256 "ab58ec2504da9ba15e5e280a9cc7fa2c11560686f376d9a93a14c8b0f00d50c3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1291/cos-linux-arm64.zip"
      sha256 "fb45c6e20066156feafdbb5d47652d5d7da531532a8af5628c33e243df4b9480"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
