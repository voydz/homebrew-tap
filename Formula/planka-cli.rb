class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.11/planka-cli-0.1.11-macos.tar.gz"
  sha256 "518fbfa14ef2cca36219141341cab65563d8cc6a8092d236e05fe20ef08c1e02"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
