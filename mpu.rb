class Mpu < Formula
  desc "MPU - Memory Processing Unit, a 16-bit virtual computer system with assembler"
  homepage "https://github.com/jsando/mpu"
  url "https://github.com/jsando/mpu/releases/download/v1.0.1/mpu_v1.0.1_Darwin_universal.tar.gz"
  sha256 "14c725b51798120f01c3e4e3830b04db82fbec5d30c88b2363db69c3cbeca207"
  license "Apache-2.0"
  version "v1.0.1"

  depends_on "sdl2"
  depends_on "sdl2_image"
  depends_on "sdl2_mixer"
  depends_on "sdl2_ttf"
  depends_on "sdl2_gfx"

  def install
    bin.install "mpu"
    doc.install "README.md"
    (pkgshare/"examples").install Dir["examples/*"]
  end

  def caveats
    <<~EOS
      Example programs have been installed to:
        #{HOMEBREW_PREFIX}/share/mpu/examples/
      
      To run an example:
        mpu run #{HOMEBREW_PREFIX}/share/mpu/examples/hello.s
      
      For more information, see:
        #{HOMEBREW_PREFIX}/share/doc/mpu/README.md
    EOS
  end

  test do
    system "#{bin}/mpu", "--version"
  end
end
