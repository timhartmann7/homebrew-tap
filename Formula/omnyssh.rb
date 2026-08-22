class Omnyssh < Formula
  desc "TUI SSH dashboard & server manager"
  homepage "https://github.com/timhartmann7/omnyssh"
  version "1.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.2/omny-aarch64-apple-darwin.tar.gz"
      sha256 "dfd54822e2d5d5d5a4a53d694f828d15564ef5d15f9550cbd66d738f52a2781d"
    else
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.2/omny-x86_64-apple-darwin.tar.gz"
      sha256 "ede2b21dc8c00549717814aa1d08e6804a4df98f92331ecab4079a4cb3cb44b2"
    end
  end

  on_linux do
    url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.2/omny-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "00b4b0f9c2ddc015ecbec9823a0ca4c68b9e975136caa9fb739e55176d325b14"
  end

  def install
    bin.install "omny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omny --version")
  end
end
