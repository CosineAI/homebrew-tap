# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1269"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1269/cos-darwin-amd64.zip"
      sha256 "01afcb59745556bef7c7f90b2006a00745c65adafb3a6a7e8a061ab5d51f3419"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1269/cos-darwin-arm64.zip"
      sha256 "ae6cc6bd4189e9c92014d577e68a8efe5fe84fe89e5e0d58ce021acef1eaf302"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1269/cos-linux-amd64-glibc2.35.zip"
      sha256 "23ea6248ef1db6af67949c45222be27eed28cb77587c13d0256e7cb453b7b86a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1269/cos-linux-arm64.zip"
      sha256 "577acfd41eef8382a4938231eb399b12352cd1af80310d8d53d1e8a9da3a8f68"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
