class GarminCli < Formula
  desc "CLI for reading health data from Garmin Connect"
  homepage "https://github.com/voydz/garmin-cli"
  url "https://github.com/voydz/garmin-cli/releases/download/v0.1.8/garmin-cli-0.1.8-macos.tar.gz"
  sha256 "dd78fb1addcf32796963a47b1fe8bd88a5308c3fa7dd024a6a746cfa9e864fc8"

  def install
    bin.install "gc"
  end

  test do
    system "#{bin}/gc", "--help"
  end
end
