class GarminCli < Formula
  desc "CLI for reading health data from Garmin Connect"
  homepage "https://github.com/voydz/garmin-cli"
  url "https://github.com/voydz/garmin-cli/releases/download/v0.1.6/garmin-cli-0.1.6-macos.tar.gz"
  sha256 "815bc396ef0c070e023ecd3263908ac2cca34954049e405abe12fa31aa49dfa3"

  def install
    bin.install "gc"
  end

  test do
    system "#{bin}/gc", "--help"
  end
end
