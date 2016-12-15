require 'formula'

class Flock < Formula
  homepage 'https://github.com/amaterasu-/flock'
  version '0.2.5'
  url "https://github.com/amaterasu-/flock/releases/download/v#{version}/flock-#{version}.tar.xz"
  sha256 'ae57b632631784e075f60f45023e2038b3b93745a223cfe5ed2d9e3afecf4d56'

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
