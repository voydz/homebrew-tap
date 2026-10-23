class GarminCli < Formula
  desc "CLI for reading health data from Garmin Connect"
  homepage "https://github.com/voydz/garmin-cli"

  on_macos do
    on_arm do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.4.0/garmin-cli-0.4.0-macos-arm64.tar.gz"
      sha256 "969adb9a4431684e7202bdffa1ad4e7e2c2556db0aef86b15a338066390b99c5"
    end
    on_intel do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.4.0/garmin-cli-0.4.0-macos-x86_64.tar.gz"
      sha256 "9f0c95f46948638d154db86daf7d71ed6fad259224cff5bd55e6be11d5b2122a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.4.0/garmin-cli-0.4.0-linux-x86_64.tar.gz"
      sha256 "b8ee9be3f7d843a14fc4d3b7e8c89b930528d3fa417f6d63bdbae06becb61af7"
    end
    on_arm do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.4.0/garmin-cli-0.4.0-linux-aarch64.tar.gz"
      sha256 "6f825cf59ff3418e9b8252750eb865ca514729696711c8d3bf3b788758dbc722"
    end
  end

  def install
    bin.install "gc"
    doc.install "THIRD_PARTY_NOTICES.md"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gc --help")
  end
end
