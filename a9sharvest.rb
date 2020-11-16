require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.9.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.9.0/a9sharvest-macos'
    sha256 '5697c4dc0d211c4c38d841d40042ad32f860808acf8c96bbcd56110707855bb8'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
