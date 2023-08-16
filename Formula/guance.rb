# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guance < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://guance.io/"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GuanceCloud/guance-cli/releases/download/v0.2.1/guance_0.2.1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bf063626bc5295017c2d6e6226e456515daacd8354e29dc75871d55b1eb4f4a9"

      def install
        bin.install "guance"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/GuanceCloud/guance-cli/releases/download/v0.2.1/guance_0.2.1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "48c17a2cd75be14b0497cd77297d36e2dbef3086fa18b3e62de734a2f0cd7eb2"

      def install
        bin.install "guance"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/GuanceCloud/guance-cli/releases/download/v0.2.1/guance_0.2.1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a35b402f694f6330a412af73eb8166333534096e6032543d88be6a49c61b4ae1"

      def install
        bin.install "guance"
        # ...
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GuanceCloud/guance-cli/releases/download/v0.2.1/guance_0.2.1_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "14084583bf8cf0480920db315623d97518c42af327de6ceeabf1da28e003f877"

      def install
        bin.install "guance"
        # ...
      end
    end
  end

  test do
    system "#{bin}/guance version"
    # ...
  end
end
