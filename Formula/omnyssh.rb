class Omnyssh < Formula
  desc "TUI SSH dashboard & server manager"
  homepage "https://github.com/timhartmann7/omnyssh"
  version "1.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.4/omny-aarch64-apple-darwin.tar.gz"
      sha256 "19dfba02efffc1db04ba30b4aad196b2ae4b18feee92c64678864719132f5f24"
    else
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.4/omny-x86_64-apple-darwin.tar.gz"
      sha256 "cf99d9e1f4ed1431ed52baf0fb82b8cc781a173e3be0f2d407155be38bd59545"
    end
  end

  on_linux do
    url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.4/omny-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9ae9d799a62148030173652e8812f54d163ade56b443a65a7cb17ab9a9dd1d99"
  end

  def install
    bin.install "omny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omny --version")
  end
end
