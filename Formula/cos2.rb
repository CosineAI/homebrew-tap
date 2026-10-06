# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1233"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1233/cos-darwin-amd64.zip"
      sha256 "31dbbfaf2380be6cc107caa113f52fea872cd03870e691b71090fef79e34bd15"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1233/cos-darwin-arm64.zip"
      sha256 "97c92ece9cfa5be8132ba38f132891bc7a2bea831210ee27914f6c593a2327bb"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1233/cos-linux-amd64-glibc2.35.zip"
      sha256 "63faaeb3d8902c8946d16717c2a313a524401cd5c8cff6454235816121dac021"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1233/cos-linux-arm64.zip"
      sha256 "57dcd05e23ef6dd0b14e55ac9cc03601ae5e59d0898049eb1524de5a208be6f2"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
