class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.8"
  version "1.0.8"
  sha256 "398f11212d62c499eb8875efdd6cd88e678951ba14b8d69c31ba9043f0d9ea3c"
  license "GPL-2.0"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gitfetch", "--help"
  end
end