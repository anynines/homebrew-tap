require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.1.1'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.1.1/a9sharvest-macos'
    sha256 'eee858a23a70a09c72389e5cd5f5fd16f18bba5b56fbb60f8baafbc7ca43a2f7'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
