class Fithit < Formula
  desc "CLI zum Parsen und Durchsuchen von Apple Fitness+ Workouts"
  homepage "https://github.com/OWNER/REPO"
  url "https://github.com/OWNER/REPO/releases/download/v0.1.0/fithit-cli-0.1.0-macos.tar.gz"
  sha256 "REPLACE_WITH_SHA256"

  def install
    bin.install "fithit"
  end

  test do
    system "#{bin}/fithit", "--help"
  end
end
