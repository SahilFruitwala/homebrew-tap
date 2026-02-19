require "language/node"

class MicropngCli < Formula
  desc "High-performance CLI image compressor using sharp and libvips"
  homepage "https://github.com/SahilFruitwala/micropng-cli"
  url "https://registry.npmjs.org/micropng-cli/-/micropng-cli-0.5.0.tgz"
  sha256 "593c09788bd7d35cd580656b566606f075f685ffb6c31ec7b6812758695263ce"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/micropng-cli", "--version"
  end
end
