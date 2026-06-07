class Omnyssh < Formula
  desc "TUI SSH dashboard & server manager"
  homepage "https://github.com/timhartmann7/omnyssh"
  version "1.0.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.4/omny-aarch64-apple-darwin.tar.gz"
      sha256 "8c6074363cb3f3dea93c018fdf209941c05ff90db4b7ceaed9d73eef93bcb718"
    else
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.4/omny-x86_64-apple-darwin.tar.gz"
      sha256 "dd22e6dd4e374bfc52d289c4ddbe88e3d4e528c90659f06ef43c2910761cf8e5"
    end
  end

  on_linux do
    url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.4/omny-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "be8ad90f521b4d9ac95063ae84539e651b5fc58cb6694a7645f43f5253db2a2a"
  end

  def install
    bin.install "omny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omny --version")
  end
end
