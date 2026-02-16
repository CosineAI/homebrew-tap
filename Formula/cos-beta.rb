class CosBeta < Formula
  desc "Beta builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "v2.0.0-beta1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      def install
        bin.install "cos2" => "cos-beta"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      def install
        bin.install "cos2" => "cos-beta"
      end
    end
    if Hardware::CPU.arm?
      def install
        bin.install "cos2" => "cos-beta"
      end
    end
  end
end
