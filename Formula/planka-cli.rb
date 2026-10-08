class PlankaCli < Formula
  desc "CLI for Planka using plankapy"
  homepage "https://github.com/voydz/planka-cli"

  on_macos do
    on_arm do
      url "https://github.com/voydz/planka-cli/releases/download/v0.1.14/planka-cli-0.1.14-macos-arm64.tar.gz"
      sha256 "55952cc7f789f11c0368b7cae9d4b326db9a1fef5b48c2c4f273c1f75ba10f28"
    end
    on_intel do
      url "https://github.com/voydz/planka-cli/releases/download/v0.1.14/planka-cli-0.1.14-macos-x86_64.tar.gz"
      sha256 "5a5817f14279e4c543348895d77af9e3f3bda69683bc0c2c4c7bc21edcc07223"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/voydz/planka-cli/releases/download/v0.1.14/planka-cli-0.1.14-linux-x86_64.tar.gz"
      sha256 "7f3da4003529666527febb744939c6300ee64ce137a4d8c1c770cdd758b044bf"
    end
    on_arm do
      url "https://github.com/voydz/planka-cli/releases/download/v0.1.14/planka-cli-0.1.14-linux-arm64.tar.gz"
      sha256 "31bc062ebe36ed8f18675b9fb5989214829007dd18547aace9a7609eae644825"
    end
  end

  def install
    bin.install "planka-cli"
  end

  test do
    system bin/"planka-cli", "--help"
  end
end
