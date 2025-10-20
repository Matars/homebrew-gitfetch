class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.15.tar.gz"
  version "1.0.15"
  sha256 "de938129eaae1e34f0a182b4372fa4eaeebb613d584b81c52534e7aa43d61897"
  license "GPL-2.0"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
    system "#{libexec}/bin/pip", "install", "requests>=2.0.0"
  end

  test do
    system "#{bin}/gitfetch", "--help"
  end
end