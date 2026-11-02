# typed: false
# frozen_string_literal: true

class Cos2 < Formula
  desc "Nightly builds of the Cosine CLI"
  homepage "https://cosine.sh/cli"
  version "nightly-1363"

  on_macos do
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1363/cos-darwin-arm64.zip"
      sha256 "49b32e43fceb3782067405ceda38e2e29ce16782a97873fcfa3c8d9d1d30b7aa"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://software.cosine.sh/cli/nightly/nightly-1363/cos-linux-amd64-glibc2.35.zip"
      sha256 "cb25bfd05526e563844537f53acbccf5c646eb6ace4907b719c6942f9216db04"
      def install
        bin.install "cos" => "cos2"
      end
    end
    if Hardware::CPU.arm?
      url "https://software.cosine.sh/cli/nightly/nightly-1363/cos-linux-arm64.zip"
      sha256 "eff6996351bf909817e4fcb3b03996223fb98663fbe8376c4675300aac63ad22"
      def install
        bin.install "cos" => "cos2"
      end
    end
  end
end
