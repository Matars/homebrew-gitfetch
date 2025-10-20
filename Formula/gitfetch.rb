class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.18.tar.gz"
  version "1.0.18"
  sha256 "bd4cf00c2327e01fbe2f1c9be5e56b3794469410ecf2dc5c63ebdc7d83258257"
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