class Termcolors < Formula
  desc "Query the running terminal emulator for its current colors via OSC escapes"
  homepage "https://github.com/jnschurig/termcolors"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.1/termcolors-aarch64-macos.tar.gz"
      sha256 "507b129bc18ae60775c6c95d6106ed735186fd07dba9f85c3df063d90fb69a67"
    end
    on_intel do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.1/termcolors-x86_64-macos.tar.gz"
      sha256 "e592f62c94446f476550237637ad66d2495e150b68f60abb9d87c2edda9014f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.1/termcolors-aarch64-linux-musl.tar.gz"
      sha256 "e02bc6e5cda9c096deee5fc6431df238c3405586443db65630f1064c63f48894"
    end
    on_intel do
      url "https://github.com/jnschurig/termcolors/releases/download/v0.1.1/termcolors-x86_64-linux-musl.tar.gz"
      sha256 "586f397d570447f43bbdfeaea40af54eb9cd542c070b161068397ba0eb181768"
    end
  end

  def install
    bin.install "termcolors"
  end

  test do
    # `brew test` runs with a PTY attached, so `--source=osc` would actually
    # attempt a real OSC probe and behave nondeterministically. The --help path
    # is deterministic and confirms the binary loads + parses args on this host.
    assert_match "usage: termcolors", shell_output("#{bin}/termcolors --help 2>&1")
  end
end
