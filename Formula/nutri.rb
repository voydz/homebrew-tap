class Nutri < Formula
  desc "CLI for nutrition tracking"
  homepage "https://github.com/voydz/nutri"
  url "https://github.com/voydz/nutri/releases/download/v0.2.1/nutri-cli-0.2.1-macos.tar.gz"
  sha256 "e677ec60cdadd1ab36346e23e8c13d2ab3a0b17bf4c090a71be488ff9d80de07"

  def install
    bin.install "nutri"
  end

  test do
    system "#{bin}/nutri", "--help"
  end
end
