require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.5.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.5.0/a9sharvest-macos'
    sha256 '32c11f26f370e117d971bf095f416cada4a17dfbf17690d5d269a2d368a5cfe4'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
