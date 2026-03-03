class Metri < Formula
  desc "CLI for health & fitness metrics tracking"
  homepage "https://github.com/voydz/metri"
  url "https://github.com/voydz/metri/releases/download/v0.3.1/metri-cli-0.3.1-macos.tar.gz"
  sha256 "1ae2194b6e4de9e87f79527c883a92b7eef6bb2a92816c34ba73cc39893d6eef"

  def install
    bin.install "metri"
  end

  test do
    system "#{bin}/metri", "--help"
  end
end
