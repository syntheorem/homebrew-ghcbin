require 'formula'

class Ghc < Formula
  homepage "http://haskell.org/ghc/"
  url "https://www.haskell.org/ghc/dist/7.8.3/ghc-7.8.3-x86_64-apple-darwin.tar.xz"
  sha256 "dba74c4cfb3a07d243ef17c4aebe7fafe5b43804468f469fb9b3e5e80ae39e38"
  version "7.8.3"

  depends_on :macos => :lion
  depends_on "gmp"
  depends_on "gcc"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end

  def caveats; <<-EOS.undent
    This brew is for GHC only; you might also be interested in cabal-install
    or haskell-platform.
    EOS
  end
end
