require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.13.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.13.0/a9sharvest-macos'
    sha256 '9f02ddf98ff3baaf2b14d7c33cd5738d8643a93b09875b25d6fa92e0b2502805'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
