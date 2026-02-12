class Nutri < Formula
  desc "CLI for nutrition tracking"
  homepage "https://github.com/voydz/nutri"
  url "https://github.com/voydz/nutri/releases/download/v0.1.0/nutri-cli-0.1.0-macos.tar.gz"
  sha256 "25e63833eb6e2103e89e82370560aa1853487f4e3c24b7cdd75047aa6ea71c5d"

  def install
    bin.install "nutri"
  end

  test do
    system "#{bin}/nutri", "--help"
  end
end
