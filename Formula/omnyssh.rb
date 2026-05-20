class Omnyssh < Formula
  desc "TUI SSH dashboard & server manager"
  homepage "https://github.com/timhartmann7/omnyssh"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.2/omny-aarch64-apple-darwin.tar.gz"
      sha256 "3baf8ed35bcd951a4e46e9de283d2b2283d8604356fff7da7e844be61a96f033"
    else
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.2/omny-x86_64-apple-darwin.tar.gz"
      sha256 "7767c0275a20d59115fbb16fc9ee1ed79115df9a636f7466e08b22461d009bc3"
    end
  end

  on_linux do
    url "https://github.com/timhartmann7/omnyssh/releases/download/v1.0.2/omny-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dddfbb8e19826e1e63d84f29ac4cb4b1b1f50fd1bf15bd1e8cb1cc8f21f108f4"
  end

  def install
    bin.install "omny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omny --version")
  end
end
