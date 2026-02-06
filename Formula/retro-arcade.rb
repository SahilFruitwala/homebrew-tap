class RetroArcade < Formula
  desc "Terminal-based arcade collection (Space Invaders, Snake)"
  homepage "https://github.com/SahilFruitwala/retro-arcade"
  url "https://github.com/SahilFruitwala/retro-arcade/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "e63c190ed108bfe080b51bc45fbf7771cd8debcf754b4e0ff11f71354b4a6b55"
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
