class GarminCli < Formula
  desc "CLI for reading health data from Garmin Connect"
  homepage "https://github.com/voydz/garmin-cli"

  on_macos do
    on_arm do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.3.1/garmin-cli-0.3.1-macos-arm64.tar.gz"
      sha256 "99bc56a18505cf5b5f5a08053b0c527bf2486acb1a7da28333971ba2bc37c891"
    end
    on_intel do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.3.1/garmin-cli-0.3.1-macos-x86_64.tar.gz"
      sha256 "398e1ef07d183f0cad1308f01a1c65d76e2c31420a9bfbc93f1b3a6339da4fb6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.3.1/garmin-cli-0.3.1-linux-x86_64.tar.gz"
      sha256 "381f94902d91c2e60fae14003672046db1612093f8f75b7be40aecaf88a7a1c3"
    end
    on_arm do
      url "https://github.com/voydz/garmin-cli/releases/download/v0.3.1/garmin-cli-0.3.1-linux-aarch64.tar.gz"
      sha256 "d8e9d570aa5c2243809d24ef30f6994ccd8933c715ee16ee09cfd645ca9823a3"
    end
  end

  def install
    bin.install "gc"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gc --help")
  end
end
