class Mpu < Formula
  desc "MPU - Memory Processing Unit, a 16-bit virtual computer system with assembler"
  homepage "https://github.com/jsando/mpu"
  url "https://github.com/jsando/mpu/releases/download/v1.0.3/mpu_v1.0.3_Darwin_universal.tar.gz"
  sha256 "3c708baa0e5f535f7821087d04aa8d76fdec1f43db36ea59205a67f76dd398a2"
  license "Apache-2.0"
  version "v1.0.3"

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

  def post_install
    # Ensure the binary is executable
    (bin/"mpu").chmod 0755
  end

  def caveats
    <<~EOS
      Example programs have been installed to:
        #{HOMEBREW_PREFIX}/share/mpu/examples/
      
      To run an example:
        mpu run #{HOMEBREW_PREFIX}/share/mpu/examples/hello.s
      
      For more information, see:
        #{HOMEBREW_PREFIX}/share/doc/mpu/README.md
      
      If 'mpu' command is not found after installation, run:
        brew link mpu
    EOS
  end

  test do
    system "#{bin}/mpu", "--version"
  end
end
