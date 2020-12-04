require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.10.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.10.0/a9sharvest-macos'
    sha256 '8884f0ff84405e6ce01875444ad0f1c708889cdf41ef3f2f01e949da9ed07b5e'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
