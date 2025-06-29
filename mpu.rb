class Mpu < Formula
  desc "MPU - Memory Processing Unit, a 16-bit virtual computer system with assembler"
  homepage "https://github.com/jsando/mpu"
  url "https://github.com/jsando/mpu/releases/download/v1.0.0/mpu_v1.0.0_Darwin_universal.tar.gz"
  sha256 "1cb3084e881bfb5ff9be6329af5970f3e76c1274d17380c26ec2b195b9bc1fca"
  license "Apache-2.0"
  version "v1.0.0"

  depends_on "sdl2"
  depends_on "sdl2_image"
  depends_on "sdl2_mixer"
  depends_on "sdl2_ttf"
  depends_on "sdl2_gfx"

  def install
    bin.install "mpu"
  end

  test do
    system "#{bin}/mpu", "--version"
  end
end
