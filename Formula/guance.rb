# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Guance < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://guance.io/"
  version "0.2.6-alpha1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/GuanceCloud/guance-cli/releases/download/v0.2.6-alpha1/guance_0.2.6-alpha1_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "01bb2e38dc843e1a5750cc7e6857cff6fa2ee6d364949c0a01bf7dff6f49c65e"

      def install
        bin.install "guance"
        # ...
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/GuanceCloud/guance-cli/releases/download/v0.2.6-alpha1/guance_0.2.6-alpha1_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1f8d653e891a13f4d13b8af8ccb79bb54c7356223ff4cb948a2b5d89b9577542"

      def install
        bin.install "guance"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/GuanceCloud/guance-cli/releases/download/v0.2.6-alpha1/guance_0.2.6-alpha1_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "1c13be88e78dbb9738fcd76f01c057364fc2b26a6e5ec181ea92966b50d50c98"

      def install
        bin.install "guance"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/GuanceCloud/guance-cli/releases/download/v0.2.6-alpha1/guance_0.2.6-alpha1_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "440c82c673a0fe49fa3c7973c62385dbd1ea469d81906cbfede673defa371bda"

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
