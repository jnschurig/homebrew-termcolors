class Termcolors < Formula
  desc "Query the running terminal emulator for its current colors via OSC escapes"
  homepage "https://github.com/jnschurig/termcolors"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.4/termcolors-aarch64-macos.tar.gz"
      sha256 "340c33f24fc7d835ca3991f629960b9ea7c2b6932cb012c1f7887e4bcb0e63aa"
    end
    on_intel do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.4/termcolors-x86_64-macos.tar.gz"
      sha256 "0a8e1e974e20d61c359f5e740d036fc9c5c43ef4bc32b7864ab73dfb1305c8a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.4/termcolors-aarch64-linux-musl.tar.gz"
      sha256 "b1c4a5d037ce49c075fd40e2cd169760d653c94c10c4f2fde00059aed8889699"
    end
    on_intel do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.4/termcolors-x86_64-linux-musl.tar.gz"
      sha256 "d1c263faa639e32323f5f5e9a5662f0a1f442aa0a078e881a12ecbb4085c5ba5"
    end
  end

  def install
    bin.install "termcolors"
  end

  test do
    assert_match "usage: termcolors", shell_output("#{bin}/termcolors --help 2>&1")
  end
end
