# Formula/lstr.rb

class Lstr < Formula
  desc "A blazingly fast, minimalist directory tree viewer"
  homepage "https://github.com/bgreenwell/lstr"
  # This version will be updated automatically by our release workflow
  version "0.2.0" # This should match the latest release
  license "MIT"

  # Define URLs and checksums for both architectures
  if Hardware::CPU.intel?
    url "https://github.com/bgreenwell/lstr/releases/download/v0.2.0/lstr-macos-x86_64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  else
    url "https://github.com/bgreenwell/lstr/releases/download/v0.2.0/lstr-macos-arm64.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    # The tarball contains the 'lstr' binary, README, and LICENSE.
    # We just need to install the binary.
    bin.install "lstr"
  end

  # Optional: Add a test block to verify the installation
  test do
    system "#{bin}/lstr", "--version"
  end
end

