class Metri < Formula
  desc "CLI for health & fitness metrics tracking"
  homepage "https://github.com/voydz/metri"
  url "https://github.com/voydz/metri/releases/download/v0.3.0/metri-cli-0.3.0-macos.tar.gz"
  sha256 "3d2dc5c247dd8acb96c52b7645c3264fee4e278beaf8468adacb1261a0e2f5d1"

  def install
    bin.install "metri"
  end

  test do
    system "#{bin}/metri", "--help"
  end
end
