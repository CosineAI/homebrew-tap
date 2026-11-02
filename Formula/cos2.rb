# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1364"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1364/cos-darwin-arm64.zip"
      sha256 "530b21e226c983905d4683c46d4dba72d57e2e088d501bd189d228e18d04714d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1364/cos-linux-amd64-glibc2.35.zip"
      sha256 "78b5aec4cde0e3b102f625753074b4a68e1545024b3339eafaeb89baecc442da"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1364/cos-linux-arm64.zip"
      sha256 "abf2933bdb2cb0500b378c741e135868404a1486e687024b5e8c27df58c02f1e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
