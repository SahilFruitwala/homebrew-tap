class RetroArcade < Formula
  desc "Terminal-based arcade collection (Space Invaders, Snake)"
  homepage "https://github.com/SahilFruitwala/retro-arcade"
  url "https://github.com/SahilFruitwala/retro-arcade/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "225ef0677b1bf063ec5d521334d48d5e0d932c04faeeaf0090d2b2b682908ee4"
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
