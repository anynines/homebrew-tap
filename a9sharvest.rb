require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.12.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.12.0/a9sharvest-macos'
    sha256 '16eacd073b60dadf5927b21fe14ab51cdf0b4196e47bfc3bcb27d7e9d49c4439'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
