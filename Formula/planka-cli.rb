class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.4/planka-cli-0.1.4-macos.tar.gz"
  sha256 "bf1b26e4a67e64480955f83f1fa53c9356db69f050083995c3e43979b6479f22"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
