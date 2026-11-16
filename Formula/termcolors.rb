class Termcolors < Formula
  desc "Query the running terminal emulator for its current colors via OSC escapes"
  homepage "https://github.com/jnschurig/termcolors"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.3.0/termcolors-aarch64-macos.tar.gz"
      sha256 "20b6c587c54bf9f845822da14548644068c1e024dd39a92667a306caa76eed59"
    end
    on_intel do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.3.0/termcolors-x86_64-macos.tar.gz"
      sha256 "af2e8a56ef0419d46ae0ecbdff010e3e36b2041d73786ba3f10418c75ae26c27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.3.0/termcolors-aarch64-linux-musl.tar.gz"
      sha256 "87cfb8dbc793e21edb6b00adcd36091427767b85d323e75a312664411737a161"
    end
    on_intel do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.3.0/termcolors-x86_64-linux-musl.tar.gz"
      sha256 "42a33bf612e0086b9ca1e02a48e3d30b357ecb56eeed892cc09d1c1426e7f60f"
    end
  end

  def install
    bin.install "termcolors"
  end

  test do
    assert_match "usage: termcolors", shell_output("#{bin}/termcolors --help 2>&1")
  end
end
