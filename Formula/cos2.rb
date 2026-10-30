# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1350"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1350/cos-darwin-arm64.zip"
      sha256 "06497de8cc49a701d198781f76f60748303c92e6a2386f2e2a6955a69fd9e650"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1350/cos-linux-amd64-glibc2.35.zip"
      sha256 "3ac696098ef1ba13ca6c6d828eddf906ddba528e2bc7e4318328a825eba424c2"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1350/cos-linux-arm64.zip"
      sha256 "50ca2a4cb9413c3f287315646995e53d6f80e0cc9679df4f103fda70935eb4de"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
