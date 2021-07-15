require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.13.1'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.13.1/a9sharvest-macos'
    sha256 '8cfae0b9f6622acf4f3b1d2e012ec09b6d0d17855b50e18e2b6cad0919df085c'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
