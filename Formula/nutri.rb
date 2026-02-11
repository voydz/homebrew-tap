class Nutri < Formula
  desc "CLI for nutrition tracking"
  homepage "https://github.com/voydz/nutri-cli"
  url "https://github.com/voydz/nutri-cli/releases/download/v0.1.0/nutri-cli-0.1.0-macos.tar.gz"
  sha256 "REPLACE_WITH_SHA256"

  def install
    bin.install "nutri"
  end

  test do
    system "#{bin}/nutri", "--help"
  end
end
