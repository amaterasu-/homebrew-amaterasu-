require 'formula'

class Flock < Formula
  homepage 'https://github.com/amaterasu-/flock'
  version '0.2.4'
  url "https://github.com/amaterasu-/flock/releases/download/v#{version}/flock-#{version}.tar.xz"
  sha256 'e10852829efed4759cd8eca0a9e6a34b61d554a59cf24d54631643fe714c8d84'

  def install
    system './configure', '--disable-debug',
                          '--disable-dependency-tracking',
                          '--disable-silent-rules',
                          "--prefix=#{prefix}"
    system 'make', 'install'
  end

  test do
    system "#{bin}/flock", 'tmpfile', 'true'
  end
end
