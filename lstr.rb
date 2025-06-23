PASTE_THE_X86_64_CHECKSUM_HERE# Formula/lstr.rb

class Lstr < Formula
  desc "A blazingly fast, minimalist directory tree viewer"
  homepage "https://github.com/bgreenwell/lstr"
  # This version will be updated automatically by our release workflow
  version "0.2.0" # This should match the latest release
  license "MIT"

  # Define URLs and checksums for both architectures
  if Hardware::CPU.intel?
    url "https://github.com/bgreenwell/lstr/releases/download/v0.2.0/lstr-macos-x86_64.tar.gz"
    sha256 "PASTE_THE_X86_64_CHECKSUM_HERE" # We'll automate this
  else
    url "https://github.com/bgreenwell/lstr/releases/download/v0.2.0/lstr-macos-arm64.tar.gz"
    sha256 "PASTE_THE_AARCH64_CHECKSUM_HERE" # We'll automate this
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

