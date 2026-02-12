class Fithit < Formula
  desc "CLI zum Parsen und Durchsuchen von Apple Fitness+ Workouts"
  homepage "https://github.com/voydz/fithit"
  url "https://github.com/voydz/fithit/releases/download/v0.1.4/fithit-cli-0.1.4-macos.tar.gz"
  sha256 "7e4d35c950f84c509caf25853163db3fb210fda216af7da56b6e4e53acb962cb"

  def install
    bin.install "fithit"
  end

  test do
    system "#{bin}/fithit", "--help"
  end
end
