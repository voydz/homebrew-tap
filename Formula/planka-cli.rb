class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.12/planka-cli-0.1.12-macos.tar.gz"
  sha256 "8d34576f5cc19a8dfe7ff19e060d421815aa47676d4bfb691912188962e0f3af"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
