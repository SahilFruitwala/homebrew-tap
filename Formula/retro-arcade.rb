class RetroArcade < Formula
  desc "Terminal-based arcade collection (Space Invaders, Snake, 2048, flappy bird)"
  homepage "https://github.com/SahilFruitwala/retro-arcade"
  url "https://github.com/SahilFruitwala/retro-arcade/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "44474b0002ef8f1b4e8eeec31f4c538d33db5bdbdb9e8adabc899c7a19eeeaa6"
  license "MIT"

  depends_on "oven-sh/bun/bun" => :build

  def install
    system "bun", "install"
    system "bun", "run", "build"
    bin.install "retro-arcade"
  end

  test do
    assert_match "retro-arcade", shell_output("#{bin}/retro-arcade --help", 1)
  end
end
