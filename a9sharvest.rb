require 'formula'

class A9sAhaCli < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.0.0'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.0.0/a9sharvest-macos'
    sha256 '32328f911fa681e71e2215a336b8bb54898bc09e9d1db232d7431b155f1e5bfe'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
