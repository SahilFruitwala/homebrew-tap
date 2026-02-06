class RetroArcade < Formula
  desc "Terminal-based arcade collection (Space Invaders, Snake, 2048, flappy bird)"
  homepage "https://github.com/SahilFruitwala/retro-arcade"
  url "https://github.com/SahilFruitwala/retro-arcade/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "ef448a233602d59d809fdaa00ac9a63146d30671fcf716f1c913cd492a254f49"
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
