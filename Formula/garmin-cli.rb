class GarminCli < Formula
  desc "CLI for reading health data from Garmin Connect"
  homepage "https://github.com/voydz/garmin-cli"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.3.0/garmin-cli-0.3.0-macos-arm64.tar.gz"
      sha256 "47f6b0a423c701a4e48e0de3e07c156ba14c40cdc0ede701bd4bb796a90dbe0a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.3.0/garmin-cli-0.3.0-linux-x86_64.tar.gz"
      sha256 "89ac6a6310d8e2f3ff4751c8c06377fb1854ec13375bac573f01903617808db3"
    end
    on_arm do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.3.0/garmin-cli-0.3.0-linux-aarch64.tar.gz"
      sha256 "ce901bf05369108204ba5a12660cfc36089906f4b3bac5fc3cc0df73ea80881c"
    end
  end

  def install
    bin.install "gc"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gc --help")
  end
end
