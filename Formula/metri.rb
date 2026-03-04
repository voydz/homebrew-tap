class Metri < Formula
  desc "CLI for health & fitness metrics tracking"
  homepage "https://github.com/voydz/metri"
  url "https://github.com/voydz/metri/releases/download/v0.3.2/metri-cli-0.3.2-macos.tar.gz"
  sha256 "187dfe370c4607c3afafa21afd29a5b9cf3b9b5a3dea585d71365fb447dfb163"

  def install
    bin.install "metri"
  end

  test do
    system "#{bin}/metri", "--help"
  end
end
