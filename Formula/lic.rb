class Lic < Formula
  include Language::Python::Virtualenv

  desc "Interactive license generator using GitHub's official API"
  homepage "https://github.com/kushvinth/lic"
  url "https://github.com/kushvinth/lic/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f38bc99981e42a9dc33d68dcfa5ff5ea09abca61e7864b780cd849bbd0ff404d"
  license "MIT"

  depends_on "python@3.12"

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-13.7.1.tar.gz"
    sha256 "e06e0c8f4097c58c6a9d5d87d8c876f44c01dcaa1cbdc1c6d92b8b6f0f5b76c1"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/source/h/httpx/httpx-0.27.0.tar.gz"
    sha256 "3e46e2d04bcae2cf29e70b8e30b9a5d80b8b0c16b3b58a62f8c02a3c6b1e6e61"
  end

  resource "questionary" do
    url "https://files.pythonhosted.org/packages/source/q/questionary/questionary-2.0.1.tar.gz"
    sha256 "dcb4d8c9b1b2c07aabef67a8b8a16f3cb63e0f9b62c63dc82c9d3ef91e24cbb6"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"lic", "--help"
  end
end
