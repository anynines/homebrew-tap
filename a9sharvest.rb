require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.6.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.6.0/a9sharvest-macos'
    sha256 '455ce1fc68906feae8c4f806e730c62b5b610ff75ecaa1101e0ac5e203ea5b92'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
