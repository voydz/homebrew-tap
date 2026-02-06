class Gc < Formula
  desc "CLI for reading health data from Garmin Connect"
  homepage "https://github.com/voydz/garmin-cli"
  url "https://github.com/voydz/garmin-cli/releases/download/v0.1.2/gc-0.1.2-macos-arm64.tar.gz"
  sha256 "4752e6e4c685d5b42476e6d8dbad61fa7c7da05968425196aed95cdcfc9b6c19"
  version "0.1.2"

  def install
    bin.install "gc"
  end

  test do
    system "#{bin}/gc", "--help"
  end
end
