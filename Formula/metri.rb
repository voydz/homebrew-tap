class Metri < Formula
  desc "CLI for health & fitness metrics tracking"
  homepage "https://github.com/voydz/metri"
  url "https://github.com/voydz/metri/releases/download/v0.1.0/metri-cli-0.1.0-macos.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  def install
    bin.install "metri"
  end

  test do
    system "#{bin}/metri", "--help"
  end
end
