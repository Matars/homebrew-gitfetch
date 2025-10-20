class Gitfetch < Formula
  include Language::Python::Virtualenv

  desc "A neofetch-style CLI tool for GitHub statistics"
  homepage "https://github.com/Matars/gitfetch"
  url "https://github.com/Matars/gitfetch/archive/refs/tags/v1.0.14.tar.gz"
  version "1.0.14"
  sha256 "0cf1056aadc5e89ef768a225fbc88e18a061ecbbe5f661fbb24af261d876aebe"
  license "GPL-2.0"

  depends_on "python@3.11"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "de938129eaae1e34f0a182b4372fa4eaeebb613d584b81c52534e7aa43d61897"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gitfetch", "--help"
  end
end