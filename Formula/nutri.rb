class Nutri < Formula
  desc "CLI for nutrition tracking"
  homepage "https://github.com/voydz/nutri"
  url "https://github.com/voydz/nutri/releases/download/v0.2.0/nutri-cli-0.2.0-macos.tar.gz"
  sha256 "17f1a2ba4126e75ce3ce35bd9f0ea388e009174bca81e542dac85a143acc91d6"

  def install
    bin.install "nutri"
  end

  test do
    system "#{bin}/nutri", "--help"
  end
end
