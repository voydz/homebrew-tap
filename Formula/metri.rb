class Metri < Formula
  desc "CLI for logging and querying health/fitness metrics"
  homepage "https://github.com/voydz/metri"
  version "0.3.3"
  license "MIT"

  on_macos do
    # Prebuilt binaries are published for Apple Silicon only.
    depends_on arch: :arm64

    url "https://github.com/voydz/metri/releases/download/v0.3.3/metri-0.3.3-darwin-arm64.tar.gz"
    sha256 "fb2e306347849297e665130d3436a04343ee81795fa2710f19a3d32669e483de"
  end

  on_linux do
    on_intel do
      url "https://github.com/voydz/metri/releases/download/v0.3.3/metri-0.3.3-linux-x86_64.tar.gz"
      sha256 "d058d0170aee1c3584c2ad8c7648651a7e13b6a1047c89d2051c96bce605ee25"
    end

    on_arm do
      url "https://github.com/voydz/metri/releases/download/v0.3.3/metri-0.3.3-linux-arm64.tar.gz"
      sha256 "207e16665d2309d778e10c9868d5e3bcda0f6caf4cce4ed0c3cd9cb7326646b2"
    end
  end

  livecheck do
    url :homepage
    strategy :github_latest
  end

  def install
    bin.install "metri"
  end

  test do
    assert_match "metri", shell_output("#{bin}/metri --help")

    ENV["METRI_DB_PATH"] = testpath/"metrics.db"
    system bin/"metri", "log", "--key", "weight_kg", "--value", "82.7"
    assert_match "weight_kg", shell_output("#{bin}/metri today")
  end
end
