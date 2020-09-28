require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.7.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.7.0/a9sharvest-macos'
    sha256 '28bab99b071f9b6199f8a1524be5d1fa1132403aee15f645f2f4997a44148201'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
