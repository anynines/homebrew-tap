require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.3.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.3.0/a9sharvest-macos'
    sha256 '91b930fb283b1247a42d80cb0dda41c2c0e7c1cfe252baae5bb239efb9afd1af'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
