class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.9/planka-cli-0.1.9-macos.tar.gz"
  sha256 "037962d2f06d50b02b3b4cd1a7398f3d95123d765717d9fad6f45f580b9055ed"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
