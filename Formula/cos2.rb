# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1412"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1412/cos-darwin-arm64.zip"
      sha256 "f733ba3306953f6907880974fdd351e3ecacc8bc2619ee70a5af20210ff22a0e"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1412/cos-linux-amd64-glibc2.35.zip"
      sha256 "4d8884b7b977b097b7aae3765cf2d2f61894442ebf94c9249d2acc009f78b568"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1412/cos-linux-arm64.zip"
      sha256 "85a25e3c920d051986fd115152343bf52577fe358b00629b25116110157de3b4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
