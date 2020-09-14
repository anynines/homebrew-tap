require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.2.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.2.0/a9sharvest-macos'
    sha256 ''6f403f687d4c638ac3f058482d15b7004ebdda9dfcdd3c4521fb766bef86c5d9
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
