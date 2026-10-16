# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1263"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1263/cos-darwin-amd64.zip"
      sha256 "84739035c2f2f1bd28c37d7880d18ac52713453a8f3b6ba5c7236616cf311a72"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1263/cos-darwin-arm64.zip"
      sha256 "f1078c9907fb33c9f7871b12ef929a36c8c481fe2137928d9ae8e4b31bee4015"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1263/cos-linux-amd64-glibc2.35.zip"
      sha256 "7c61749e28040973adfd6ef670e1e55e702622bf14d8395acd72c0658231458a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1263/cos-linux-arm64.zip"
      sha256 "58cc46e939ac703e58c95e76448c2a6dee18aeccd70f958d0db45409e1da6dc1"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
