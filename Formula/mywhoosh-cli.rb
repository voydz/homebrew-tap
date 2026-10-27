class MywhooshCli < Formula
  desc "Download original MyWhoosh activity FIT files from the command-line"
  homepage "https://github.com/voydz/mywhoosh-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.3.0/mywhoosh-cli-0.3.0-macos-arm64.tar.gz"
      sha256 "2565d4a373c8f3dfe504fc1e8f54c3fbbaabe203c2b792a0d609928c1480c237"
    end
    on_intel do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.3.0/mywhoosh-cli-0.3.0-macos-x86_64.tar.gz"
      sha256 "3609fb7c33c84169445dcbf063abe256c80f9e2c02a36cc2a279ed4a07d7db16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.3.0/mywhoosh-cli-0.3.0-linux-x86_64.tar.gz"
      sha256 "29de7f2632885907f2e94bfbd719507ac5583b1aaee521c5ed2bc355758e0f5f"
    end
    on_arm do
      url "https://github.com/voydz/mywhoosh-cli/releases/download/v0.3.0/mywhoosh-cli-0.3.0-linux-aarch64.tar.gz"
      sha256 "57c29145613024c6c423b0133404799099b87bd09385ed8849382729c886a4e2"
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
