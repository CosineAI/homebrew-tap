# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1266"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1266/cos-darwin-amd64.zip"
      sha256 "7b43df6c8138f55d553c28e976e4a214d67041e21e743d5d90833be10ffdaea0"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1266/cos-darwin-arm64.zip"
      sha256 "0a60443573099c97d576a1655b94367c2fbd8a33520ca5b78febbef6f27505b9"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1266/cos-linux-amd64-glibc2.35.zip"
      sha256 "6c5091e28d161813ef106a76b180ae64ac16f94e52c47ae67e8d90388cc63e8e"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1266/cos-linux-arm64.zip"
      sha256 "2969dec220ee48ce5de36b56767a4f35b609e3cb35fe12774fd92f8ef1c8a389"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
