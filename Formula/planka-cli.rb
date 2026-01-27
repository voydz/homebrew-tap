class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"
  url "https://github.com/voydz/planka-cli/releases/download/v.0.1.6/planka-cli-.0.1.6-macos.tar.gz"
  sha256 "77b440fdec28183259c7a4457428dc7e76fc7956d3e48666119d6c1732ca4af6"

  def install
    bin.install "planka-cli"
  end

  test do
    system "#{bin}/planka-cli", "--help"
  end
end
