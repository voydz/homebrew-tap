class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.5/planka-cli-0.1.5-macos.tar.gz"
  sha256 "c4d8057aed18103b0caa05eef4a2dde5b0fb3ea32aec242e6719e15c9f1cfa20"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
