class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.12.tar.gz"
  version "1.0.12"
  sha256 "1eeeaa8e7b2f8778603f2073781f8c49b1df4f53274052aa6c486a29dee124d2"
  license "GPL-2.0"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gitfetch", "--help"
  end
end