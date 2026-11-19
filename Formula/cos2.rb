# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1452"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1452/cos-darwin-arm64.zip"
      sha256 "a11dbbc2b836ecd6bf6e1575021df67c37914c244c85edd6f44d81a98a1c9707"
      def install
        bin.install "cos" => "cos2"
        (prefix/"Resources").install "Cosine Computer Use Staging.app"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1452/cos-linux-amd64-glibc2.35.zip"
      sha256 "09bccddd253dc551693b968b3ce75adf1609f899f2cc516be3af0369621c9757"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1452/cos-linux-arm64.zip"
      sha256 "6c1ab6d6f45309fef54cb882dd802742a3bef4c1fab68df73f447d69d461d86d"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
