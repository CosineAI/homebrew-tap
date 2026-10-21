# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1287"

  on_macos do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1287/cos-darwin-amd64.zip"
      sha256 "80843604e22ee69467165b83c59dba2830e54a4c5e115c739e00a636b1e18a16"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1287/cos-darwin-arm64.zip"
      sha256 "b1e4083b275f0bbadeb18a6d253cdf3991f055210d0908cbeb7ad02b5141962f"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1287/cos-linux-amd64-glibc2.35.zip"
      sha256 "d3de1438272666c173831ef79df669d17638f31010711067691d64ab0d0c6a16"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1287/cos-linux-arm64.zip"
      sha256 "7245bfd8a2670c3c87c811dbe83b52c00005070cd104624b8f463f0ee0f2bcd7"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
