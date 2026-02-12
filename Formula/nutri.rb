class Nutri < Formula
  desc "CLI for nutrition tracking"
  homepage "https://github.com/voydz/nutri"
  url "https://github.com/voydz/nutri/releases/download/v0.1.6/nutri-cli-0.1.6-macos.tar.gz"
  sha256 "d70ddacbdc6c983dcd029cf9f3ace7fe94be810dfbec14240435631db6bc60c4"

  def install
    bin.install "nutri"
  end

  test do
    system "#{bin}/nutri", "--help"
  end
end
