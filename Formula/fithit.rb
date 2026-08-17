class Fithit < Formula
  desc "CLI zum Parsen und Durchsuchen von Apple Fitness+ Workouts"
  homepage "https://github.com/voydz/fithit"
  version "0.2.0"

  on_macos do
    # Only Apple Silicon binaries are published.
    depends_on arch: :arm64

    url "https://github.com/voydz/fithit/releases/download/v0.2.0/fithit-cli-0.2.0-macos-arm64.tar.gz"
    sha256 "a480b282278091c3b057879b5712306ab70dfe4cc00e42ed8b6753a5def2e8ea"
  end

  on_linux do
    on_arm do
      url "https://github.com/voydz/fithit/releases/download/v0.2.0/fithit-cli-0.2.0-linux-arm64.tar.gz"
      sha256 "70bbbb140d626c99eb905fb7a50697280253c3192f8a6651936183c54f134ba8"
    end
    on_intel do
      url "https://github.com/voydz/fithit/releases/download/v0.2.0/fithit-cli-0.2.0-linux-x86_64.tar.gz"
      sha256 "382dc0c5fb6673b9153297d953fd1b16d48ca29750740db975e4e5a7bf9efe6d"
    end
  end

  def install
    bin.install "fithit"
  end

  test do
    assert_match "fithit", shell_output("#{bin}/fithit --help")
  end
end
