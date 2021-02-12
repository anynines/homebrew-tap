require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.11.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.11.0/a9sharvest-macos'
    sha256 '868d389aca145f0becc67db116f57ec628a8396ebf8c3f0aa7dc46b420145ea1'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
