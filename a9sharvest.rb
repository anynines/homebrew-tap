require 'formula'

class A9sharvest < Formula
  desc "a9sharvest"
  homepage 'https://github.com/anynines/a9sharvest'
  version 'v1.8.1'

  if OS.mac?
    url 'https://github.com/anynines/a9sharvest/releases/download/v1.8.1/a9sharvest-macos'
    sha256 '1d3297ff0593a2276f625dfe5420d8c7f9548350ca2d7ce8e685606745219de4'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9sharvest-macos' => 'a9sharvest'
  end

  test do
    system "#{bin}/a9sharvest"
  end
end
