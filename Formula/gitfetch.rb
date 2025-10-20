class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.3"
  version "1.0.3"
  sha256 "350a0d006c0db5182fdbe82abffcbd0c17b5ad5036d79199eb5c7fe6f6f9fcdd"
  license "GPL-2.0"

  depends_on "python@3.8"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gitfetch", "--help"
  end
end