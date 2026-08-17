class Nutri < Formula
  desc "CLI for nutrition tracking"
  homepage "https://github.com/voydz/nutri"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/voydz/nutri/releases/download/v0.3.0/nutri-cli-0.3.0-macos-arm64.tar.gz"
      sha256 "c48b86735deacb1518109f5652c13d2a7d3a6af224a7661e0f61e793ebd0df3f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/voydz/nutri/releases/download/v0.3.0/nutri-cli-0.3.0-linux-x86_64.tar.gz"
      sha256 "8a5438c42135611ef9c6d7b2f151f2620ffbaec0e696a947d3cd68990118cb6b"
    end
    on_arm do
      url "https://github.com/voydz/nutri/releases/download/v0.3.0/nutri-cli-0.3.0-linux-arm64.tar.gz"
      sha256 "23c8dd8e9911460e9212cbb7d56a6a4218c8869fd8a34fddc4067e8afc0a0a91"
    end
  end

  def install
    bin.install "nutri"
  end

  test do
    system bin/"nutri", "--help"
  end
end
