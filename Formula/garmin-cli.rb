class GarminCli < Formula
  desc "CLI for reading health data from Garmin Connect"
  homepage "https://github.com/voydz/garmin-cli"
  url "https://github.com/voydz/garmin-cli/releases/download/v0.1.9/garmin-cli-0.1.9-macos.tar.gz"
  sha256 "9375a7a92ccb4eb135d200efd7a6015813b1c72e131397c5c97da4b7c25335f0"

  def install
    bin.install "gc"
  end

  test do
    system "#{bin}/gc", "--help"
  end
end
