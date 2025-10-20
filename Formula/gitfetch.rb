class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.2.tar.gz"
  version "1.0.2"
  sha256 "604ad6e3c70ca08cea17bf9ca9236476b739ecc5b35e3821c7304bdf156a21c1"
  license "GPL-2.0"

  depends_on "python@3.8"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gitfetch", "--help"
  end
end