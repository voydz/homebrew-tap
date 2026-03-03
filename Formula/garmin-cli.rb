class GarminCli < Formula
  desc "CLI for reading health data from Garmin Connect"
  homepage "https://github.com/voydz/garmin-cli"
  url "https://github.com/voydz/garmin-cli/releases/download/v0.2.0/garmin-cli-0.2.0-macos.tar.gz"
  sha256 "692819e2c010d0fee0bb72439e68e9139e45875d41cda1ace78b0c04b7d8ce4d"

  def install
    bin.install "gc"
  end

  test do
    system "#{bin}/gc", "--help"
  end
end
