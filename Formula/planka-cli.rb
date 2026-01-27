class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.3/planka-cli-0.1.3-macos.tar.gz"
  sha256 "47a05ac60377cfade732907618192ba82426cd593194bdb80e582d3722e4e957"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
