class Omnyssh < Formula
  desc "TUI SSH dashboard & server manager"
  homepage "https://github.com/timhartmann7/omnyssh"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.1/omny-aarch64-apple-darwin.tar.gz"
      sha256 "5ecf825d552a9851aca4959f249e892fb90ce4a9fb46e425fe46dad905fe7183"
    else
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.1/omny-x86_64-apple-darwin.tar.gz"
      sha256 "c5501b47fe499575d38a06170ad799962feb8232584442ada7879feaffcbe041"
    end
  end

  on_linux do
    url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.1/omny-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "873d8e4dec53187f2b77a0944692d798983059124f0291ee6fc6622fa092c91e"
  end

  def install
    bin.install "omny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omny --version")
  end
end
