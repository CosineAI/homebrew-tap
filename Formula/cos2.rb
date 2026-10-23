# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1301"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1301/cos-darwin-amd64.zip"
      sha256 "099ffc51ff950b0ce56c671e186c0f0c48c5b5a65dba5808e596e14679510339"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1301/cos-darwin-arm64.zip"
      sha256 "17227d022b6a44b649f3e2ac5d556ee95daa3d33df3570738091b6d9af80b27e"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1301/cos-linux-amd64-glibc2.35.zip"
      sha256 "dade599d6e6df72e0dc0f0e22253a1a8bf96c257f35eb2f638c116373d6e7c71"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1301/cos-linux-arm64.zip"
      sha256 "a1404431a669003513bf851211d2cc588ec5329f395c7f1d4a5be6d6ace9aa0f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
