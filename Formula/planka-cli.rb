class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.2/planka-cli-0.1.2-macos.tar.gz"
  sha256 "aabec0342c447515176cd0ecec4f0ccf25bc634086d4f04fdb1b006ee28df8da"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
