class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.8/planka-cli-0.1.8-macos.tar.gz"
  sha256 "518d7bf2c3ea57f7932ff8fd778db9ab50db23805cede64cf6e920febaf07d83"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
