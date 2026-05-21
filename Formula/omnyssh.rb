class Omnyssh < Formula
  desc "TUI SSH dashboard & server manager"
  homepage "https://github.com/timhartmann7/omnyssh"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.3/omny-aarch64-apple-darwin.tar.gz"
      sha256 "79048545fbe3e5e3a768454bf299e858474af2a90cdb243c6b13b6597f6b5465"
    else
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.3/omny-x86_64-apple-darwin.tar.gz"
      sha256 "b286f21696c6d1ea87a532ff51007242cc552b48795430369c1177d2c30ae52c"
    end
  end

  on_linux do
    url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.3/omny-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "429196848e08533baddf01b628eb2c71f7c8995e31cbbae1ce1f10fd72397d72"
  end

  def install
    bin.install "omny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omny --version")
  end
end
