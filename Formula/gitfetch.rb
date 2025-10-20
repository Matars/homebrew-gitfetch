class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.16.tar.gz"
  version "1.0.16"
  sha256 "5d98b64c68e6366645b35c0add6b4781910c8457a1343ac09460779d622750e6"
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