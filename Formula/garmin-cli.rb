class GarminCli < Formula
  desc "CLI for reading health data from Garmin Connect"
  homepage "https://github.com/voydz/garmin-cli"
  url "https://github.com/voydz/garmin-cli/releases/download/v0.1.10/garmin-cli-0.1.10-macos.tar.gz"
  sha256 "aba1c317e7736494292d65255a97b207da796f34f47c757342bc02876cf56abd"

  def install
    bin.install "gc"
  end

  test do
    system "#{bin}/gc", "--help"
  end
end
