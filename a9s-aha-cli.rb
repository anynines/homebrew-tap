require 'formula'

class A9sAhaCli < Formula
  desc "a9s-aha-cli"
  homepage 'https://github.com/anynines/a9s-aha-cli'
  version 'stable-0.1.0'

  if OS.mac?
    url 'https://github.com/anynines/a9s-aha-cli/releases/download/stable-0.1.0/a9s-aha-cli-macos'
    sha256 'bf93cf490ee396a1ea9c5d2b7df93b33bbbb0779d198df1e3fb0d46cbfb3f227'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'a9s-aha-cli-macos' => 'a9s-aha-cli'
  end

  test do
    system "#{bin}/a9s-aha-cli"
  end
end
