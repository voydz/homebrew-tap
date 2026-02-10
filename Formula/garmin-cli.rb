class GarminCli < Formula
  desc "CLI for reading health data from Garmin Connect"
  homepage "https://github.com/voydz/garmin-cli"
  url "https://github.com/voydz/garmin-cli/releases/download/v0.1.7/garmin-cli-0.1.7-macos.tar.gz"
  sha256 "9e1ff2251ae01612dd5c7419267727b15c070de0312020f6dba3c30149ea5d75"

  def install
    bin.install "gc"
  end

  test do
    system "#{bin}/gc", "--help"
  end
end
