class Fithit < Formula
  desc "CLI zum Parsen und Durchsuchen von Apple Fitness+ Workouts"
  homepage "https://github.com/voydz/fithit"
  url "https://github.com/voydz/fithit/releases/download/v0.1.5/fithit-cli-0.1.5-macos.tar.gz"
  sha256 "6cf059dd9e77ed9401a6286fdcc880f920277cff62f835195732d6cce8a7e183"

  def install
    bin.install "fithit"
  end

  test do
    system "#{bin}/fithit", "--help"
  end
end
