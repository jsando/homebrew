class Mpu < Formula
  desc "MPU - Memory Processing Unit, a 16-bit virtual computer system with assembler"
  homepage "https://github.com/jsando/mpu"
  url "https://github.com/jsando/mpu/releases/download/v1.0.2/mpu_v1.0.2_Darwin_universal.tar.gz"
  sha256 "82456c0c87ac2756381741f85679c039296acd419517f4377e4e21473c3119d0"
  license "Apache-2.0"
  version "v1.0.2"

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
