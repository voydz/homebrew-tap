class Fithit < Formula
  desc "CLI zum Parsen und Durchsuchen von Apple Fitness+ Workouts"
  homepage "https://github.com/voydz/fithit"
  url "https://github.com/voydz/fithit/releases/download/v0.1.0/fithit-cli-0.1.0-macos.tar.gz"
  sha256 "1c4bf00ab9fef4329f5bd1cebe79c9b4bcb1695e90a8964af77770ab670c288d"

  def install
    bin.install "fithit"
  end

  test do
    system "#{bin}/fithit", "--help"
  end
end
