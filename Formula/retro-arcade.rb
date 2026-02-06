class RetroArcade < Formula
  desc "Terminal-based arcade collection (Space Invaders, Snake, 2048, flappy bird)"
  homepage "https://github.com/SahilFruitwala/retro-arcade"
  url "https://github.com/SahilFruitwala/retro-arcade/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "1df4a3b05fa5ac687cd3fb61cb68501d691661ac1e61ec5846b15d8e2c0c7b61"
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
