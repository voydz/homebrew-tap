class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"

  on_macos do
    on_arm do
      url "https://github.com/voydz/planka-cli/releases/download/v0.1.15/planka-cli-0.1.15-macos-arm64.tar.gz"
      sha256 "a6e3879bce69fb2f495767022b470f71c5ffe8871b90998d30a91e4c589483a9"
    end
    on_intel do
      url "https://github.com/voydz/planka-cli/releases/download/v0.1.15/planka-cli-0.1.15-macos-x86_64.tar.gz"
      sha256 "72b20c3a151f13e23983a512a4599c6e46f5a5ea90085d578fdde8a85adf9e7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/voydz/planka-cli/releases/download/v0.1.15/planka-cli-0.1.15-linux-x86_64.tar.gz"
      sha256 "c87cff4aaf2c69dd09537d0655d3a518ce60c162bc8473d62c00f4489e93ac72"
    end
    on_arm do
      url "https://github.com/voydz/planka-cli/releases/download/v0.1.15/planka-cli-0.1.15-linux-arm64.tar.gz"
      sha256 "ea1caad969fa115c32e4f6f6062cbff1e512308c048f49afac546dd7d9e204d8"
    end
  end

  def install
    bin.install "planka-cli"
  end

  test do
    system bin/"planka-cli", "--help"
  end
end
