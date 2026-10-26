# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1307"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1307/cos-darwin-amd64.zip"
      sha256 "7cba85dd08a7a0e14547a887b01000d768448b29c31825a8975c72b3ee58898a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1307/cos-darwin-arm64.zip"
      sha256 "453a8ff098c4b710cf9997efaae6b6e90fa90a1f11a950cf61404723bf90432e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1307/cos-linux-amd64-glibc2.35.zip"
      sha256 "0366c2ecf3d31cd3cab932bc08cc6ad82e2c8d8ae327f7743242f71a3db44da3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1307/cos-linux-arm64.zip"
      sha256 "5091633b63fe77d9a7c9772aebce46e8ade1ea916dc7a976cff8718ec1796339"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
