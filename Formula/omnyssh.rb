class Omnyssh < Formula
  desc "TUI SSH dashboard & server manager"
  homepage "https://github.com/timhartmann7/omnyssh"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.0/omny-aarch64-apple-darwin.tar.gz"
      sha256 "bb298e1c8036178df831cfac6a48adb03489474c01176939215addcc7541ab6d"
    else
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.0/omny-x86_64-apple-darwin.tar.gz"
      sha256 "d38d1a74e4e162d0df339b0e797df62fba807aed5e6fb17b3de360e16157363e"
    end
  end

  on_linux do
    url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.0/omny-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "443fe8f1bdd8492487eb790738510467bf7bfb89002f3f30d5d2369379d3e80b"
  end

  def install
    bin.install "omny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omny --version")
  end
end
