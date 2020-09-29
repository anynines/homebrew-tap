require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.8.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.8.0/a9sharvest-macos'
    sha256 '8f89b1ae2088dfc8b9f45cd027580777f09e9c6646a02ec4c2c6df5caf1c0e18'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
