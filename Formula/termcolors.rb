class Termcolors < Formula
  desc "Query the running terminal emulator for its current colors via OSC escapes"
  homepage "https://github.com/jnschurig/termcolors"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.2.0/termcolors-aarch64-macos.tar.gz"
      sha256 "968e0e7c7f27a7ef8b5990c8d8e3bd2f7817b08f05a4f570e5bdd9e264baff04"
    end
    on_intel do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.2.0/termcolors-x86_64-macos.tar.gz"
      sha256 "ba50ab49a8724a5a5311f043aa7792a08dfe3826c156fe3827039509e38f77d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.2.0/termcolors-aarch64-linux-musl.tar.gz"
      sha256 "6075fe9984107c9807e3984916b0d2b7305fcb19d40531e055d02a7351c4bb77"
    end
    on_intel do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.2.0/termcolors-x86_64-linux-musl.tar.gz"
      sha256 "e656a55124dbe5b4a615fde0b0374fca74befad098ed9acedc67ff2a63fac79e"
    end
  end

  def install
    bin.install "termcolors"
  end

  test do
    assert_match "usage: termcolors", shell_output("#{bin}/termcolors --help 2>&1")
  end
end
