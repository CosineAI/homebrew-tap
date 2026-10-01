# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1221"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1221/cos-darwin-amd64.zip"
      sha256 "2fbd760c19c509532f45b2cda7ed2208d7a6e3de6e7fed552b73f3540a808ea3"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1221/cos-darwin-arm64.zip"
      sha256 "4e56207765990e95a3b427e92abbf4696cf7c1361b699e970048d6c35b5a2413"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1221/cos-linux-amd64-glibc2.35.zip"
      sha256 "06127c080a3c2e0f8a478a7b932bd4082f7c20e1f2603c0506338b3ebf16e02a"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1221/cos-linux-arm64.zip"
      sha256 "f04e0889991ca0de072e31f769bbd7efc780e01fb57eee032ccb71ec0a88507a"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
