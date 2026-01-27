class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  version "0.1.0"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.0/planka-cli-0.1.0-macos.tar.gz"
  sha256 "REPLACE_WITH_SHA256"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
