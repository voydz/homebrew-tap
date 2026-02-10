class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v0.1.13/planka-cli-0.1.13-macos.tar.gz"
  sha256 "0c61da30a9c4def163e8af4da651b9d742271e92338aeb3e474d7b9a73be2b84"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
