require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.3.1'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.3.1/a9sharvest-macos'
    sha256 '1ed6d37632f3c0c22027bd3be5eb4b0abfcbe6fcdb4dddabb4c3874fbd24b64a'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
