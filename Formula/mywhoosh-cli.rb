class MywhooshCli < Formula
  desc "Download original MyWhoosh activity FIT files from the command-line"
  homepage "https://github.com/voydz/mywhoosh-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.2.0/mywhoosh-cli-0.2.0-macos-arm64.tar.gz"
      sha256 "94f3f646362cea64455187df587239b04302c9eaefabd7117a2f2281ad395885"
    end
    on_intel do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.2.0/mywhoosh-cli-0.2.0-macos-x86_64.tar.gz"
      sha256 "98947dbd4a7bb53d2b2d4e0d2551acede056a2bbd260c2ac35a607f40b95bd2b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.2.0/mywhoosh-cli-0.2.0-linux-x86_64.tar.gz"
      sha256 "c6600f75f7754c92df9fa4b511c65249254cc43e388d943839ecf5f8f509f6e8"
    end
    on_arm do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.2.0/mywhoosh-cli-0.2.0-linux-aarch64.tar.gz"
      sha256 "faabc0370118dba8032041cddb6b669ee6773f15619cb5c5105e80d74a043e67"
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
