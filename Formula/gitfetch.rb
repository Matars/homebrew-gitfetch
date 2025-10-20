class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.9"
  version "1.0.9"
  sha256 "dcdbd35149220e0cfea68f2611619a0e77afe75e960cd64a4921bf2ea40b82be"
  license "GPL-2.0"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gitfetch", "--help"
  end
end