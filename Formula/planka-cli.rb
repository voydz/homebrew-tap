class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.7/planka-cli-0.1.7-macos.tar.gz"
  sha256 "d155127659a3e2cb6bf29bffd05f9cbce10e42cf6a217e78285849cfa40cac0a"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
