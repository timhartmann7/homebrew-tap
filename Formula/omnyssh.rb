class Omnyssh < Formula
  desc "TUI SSH dashboard & server manager"
  homepage "https://github.com/timhartmann7/omnyssh"
  version "1.1.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.5/omny-aarch64-apple-darwin.tar.gz"
      sha256 "b1077c33e5521bc4372634b8d6f2ffcf93d6a5cf9bdc07c856889cbb359cda1f"
    else
      url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.5/omny-x86_64-apple-darwin.tar.gz"
      sha256 "1478620ed37e8f5b1de7d7adc24a53f491ac3a02d6403e40d16e38fd89128b22"
    end
  end

  on_linux do
    url "https://github.com/timhartmann7/omnyssh/releases/download/v1.1.5/omny-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "20e7e8b2445eeaf8a7c0c1bda8f4cfad5740a3f157a2c1df142b53643b24ef69"
  end

  def install
    bin.install "omny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/omny --version")
  end
end
