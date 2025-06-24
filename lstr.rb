# Formula/lstr.rb

class Lstr < Formula
  desc "A fast, minimalist directory tree viewer"
  homepage "https://github.com/bgreenwell/lstr"
  # This version will be updated automatically by our release workflow
  version "0.2.1" # This should match the latest release
  license "MIT"

  # Define URLs and checksums for both architectures
  if Hardware::CPU.intel?
    url "https://github.com/bgreenwell/lstr/releases/download/v0.2.1/lstr-macos-x86_64.tar.gz"
    sha256 "b87d6c22cf21a63070882fca6313af74b9fb001597500f669187e02bb6e667e8"
  else
    url "https://github.com/bgreenwell/lstr/releases/download/v0.2.1/lstr-macos-arm64.tar.gz"
    sha256 "ff95c4991435d919583f28e40191ebfe752612b57df05ee058114920d0162c64"
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

