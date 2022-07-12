# This file was generated by GoReleaser. DO NOT EDIT.
class Lsec2 < Formula
  desc "List view of aws ec2 instances"
  homepage "https://github.com/goldeneggg/lsec2"
  version "0.2.11"

  if OS.mac?
    url "https://github.com/goldeneggg/lsec2/releases/download/v0.2.11/lsec2_0.2.11_darwin_amd64.tar.gz"
    sha256 "ca126ade9e995763ba04a2b9ded3b599c02e87852fc060d7b43df78ea90a0490"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/goldeneggg/lsec2/releases/download/v0.2.11/lsec2_0.2.11_linux_amd64.tar.gz"
      sha256 "1a45d4a2d3c57c04fa1f956804ff516538968491ceef06522f93b5907c6f75dd"
    end
  end

  def install
    bin.install "lsec2"
  end

  test do
    system '#{bin}/lsec2 -v'
  end
end
