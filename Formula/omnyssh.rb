class Omnyssh < Formula
  desc "TUI SSH dashboard & server manager"
  homepage "https://github.com/timhartmann7/omnyssh"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.0/omny-aarch64-apple-darwin.tar.gz"
      sha256 "3f47e4889f7dde052ac87861ece9523afa416a123e1638acdf9502a16e360a2e"
    else
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.0/omny-x86_64-apple-darwin.tar.gz"
      sha256 "b034dc164f6db11fe0af1f5c44863c968b71694d25babe0c9b7ac0a573793c2d"
    end
  end

  on_linux do
    url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.0/omny-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "11ab47aa861a0aa46bf146245cb4cead17803589c1b2b466e9b567b6531c95d7"
  end

  def install
    bin.install "omny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omny --version")
  end
end
