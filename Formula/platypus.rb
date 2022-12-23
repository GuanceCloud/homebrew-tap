# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Platypus < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://platypus.guance.io/"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GuanceCloud/platypus/releases/download/v0.2.2/platypus_0.2.2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "374647327191e613a319f9fb075b5c48cee016900cb3d72ac300f703ab7fbdfa"

      def install
        bin.install "platypus"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/GuanceCloud/platypus/releases/download/v0.2.2/platypus_0.2.2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "954586f93f15fb109ad7b7dd959ad6dc62169a83d0121a888ab0f88b1424833f"

      def install
        bin.install "platypus"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/GuanceCloud/platypus/releases/download/v0.2.2/platypus_0.2.2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "c1f18f1236bf69db97b878da271e2e8b2676e649b82dbebce5d2bc01106f9178"

      def install
        bin.install "platypus"
        # ...
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GuanceCloud/platypus/releases/download/v0.2.2/platypus_0.2.2_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a9369d0ecbececd1438c9c73ad264c4e591bb46c692335cbbd2e437b7cde3328"

      def install
        bin.install "platypus"
        # ...
      end
    end
  end

  test do
    system "#{bin}/platypus version"
    # ...
  end
end
