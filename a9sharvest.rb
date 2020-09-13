require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.1.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.1.0/a9sharvest-macos'
    sha256 'c74913bf32d59f6834d422f5e387cf6ac72d26545f6794d3244977823cfb76e4'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
