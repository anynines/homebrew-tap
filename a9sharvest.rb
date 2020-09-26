require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.4.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.4.0/a9sharvest-macos'
    sha256 'a158bbb54a792a3b9af2caaea94a8587caccae6275676688fe1c2f97913d592c'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
