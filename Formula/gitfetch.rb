class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.6"
  version "1.0.6"
  sha256 "6bcf56774b57a4c03679a2da168934ba048d863af68454be1b613bcebf86aa2b"
  license "GPL-2.0"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gitfetch", "--help"
  end
end