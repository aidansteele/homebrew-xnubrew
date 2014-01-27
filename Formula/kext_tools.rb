require "formula"

class KextTools < Formula
  homepage ""
  url "http://opensource.apple.com/tarballs/kext_tools/kext_tools-180.2.tar.gz"
  sha1 "7d8a88a3e136d7704844131ae58c95f8567d2d0d"
  
  def install
    system 'cc', 'kextsymboltool.c', '-lstdc++', '-okextsymboltool'
    system 'cc', 'setsegname.c', '-osetsegname'
    bin.install 'kextsymboltool'
    bin.install 'setsegname'
  end

  test do
  end
end
