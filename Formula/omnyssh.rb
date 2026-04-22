class Omnyssh < Formula
  desc "TUI SSH dashboard & server manager"
  homepage "https://github.com/timhartmann7/omnyssh"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.1/omny-aarch64-apple-darwin.tar.gz"
      sha256 "530c3bc90a14e7eba62121777143a046a2d2f34cd426c0c02b14078bc395bc54"
    else
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.1/omny-x86_64-apple-darwin.tar.gz"
      sha256 "d77067f0b096ed42c9d1ad55d8ee4560a60021fe3b8d781653b153cb3d0db60a"
    end
  end

  on_linux do
    url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.1/omny-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8a898d3620e8bdd7ab1cc8637b1a24f1b27135e9ae62e54145c7eea5f3e1b8f9"
  end

  def install
    bin.install "omny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omny --version")
  end
end
