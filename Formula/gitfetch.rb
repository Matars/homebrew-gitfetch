class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.17.tar.gz"
  version "1.0.17"
  sha256 "47b7dd32b4993a4d47591ecf9e3897459dc3ecc30622a001b4c7e6978edd4684"
  license "GPL-2.0"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
    system "python3.11", "-m", "pip", "--python=#{libexec}/bin/python", "install", "requests>=2.0.0"
  end

  test do
    system "#{bin}/gitfetch", "--help"
  end
end