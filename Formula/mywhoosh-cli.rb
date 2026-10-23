class MywhooshCli < Formula
  desc "Download original MyWhoosh activity FIT files from the command-line"
  homepage "https://github.com/voydz/mywhoosh-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.1.0/mywhoosh-cli-0.1.0-macos-arm64.tar.gz"
      sha256 "7a59d5850cab97db50d770e329649c4979c10bf78cf53eebad5d56234fad8607"
    end
    on_intel do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.1.0/mywhoosh-cli-0.1.0-macos-x86_64.tar.gz"
      sha256 "1822811934306e901df3db02ad15a4707aefa93a1cafbf6a59c6098cd116686f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.1.0/mywhoosh-cli-0.1.0-linux-x86_64.tar.gz"
      sha256 "1beb6c5018aaadbdfcedc63a6cf1d740193ee4ee0e98e151ca373a2b8758381b"
    end
    on_arm do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.1.0/mywhoosh-cli-0.1.0-linux-aarch64.tar.gz"
      sha256 "03a942a9d5322e4ee8dddce97f451cb64df897c94bdd9a37c938d2ff3f1c476a"
    end
  end

  def install
    bin.install "mywhoosh"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/mywhoosh --help")
    assert_match version.to_s, shell_output("#{bin}/mywhoosh version")
  end
end
