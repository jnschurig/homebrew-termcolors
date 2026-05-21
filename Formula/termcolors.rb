class Termcolors < Formula
  desc "Query the running terminal emulator for its current colors via OSC escapes"
  homepage "https://github.com/jnschurig/termcolors"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.3/termcolors-aarch64-macos.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.3/termcolors-x86_64-macos.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.3/termcolors-aarch64-linux-musl.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
    on_intel do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.3/termcolors-x86_64-linux-musl.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "termcolors"
  end

  test do
    assert_match "usage: termcolors", shell_output("#{bin}/termcolors --help 2>&1")
  end
end
