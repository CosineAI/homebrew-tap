# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1259"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1259/cos-darwin-amd64.zip"
      sha256 "46f1fb48b509007843dd19814582cc8fc14aad5a3f1856507a56f86b674accf8"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1259/cos-darwin-arm64.zip"
      sha256 "ec6fd1ecc0864768c95734175ae10566be27580607cb671914817aaf251ae6c4"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1259/cos-linux-amd64-glibc2.35.zip"
      sha256 "f6849c621916690727b9b9d5d6f060fd958495545a67c76ef9d9fcd585b8ec01"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1259/cos-linux-arm64.zip"
      sha256 "b27d28eb9f6f73fc68e059719629b6fa97d7f497da97453934b7d36d369c7fdd"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
