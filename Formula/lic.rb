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
  sha256 "9be308cb1fe2f1f57d67ce99e95af38a1e2bc71ad9813b0e247cf7ffbcc3a432"
end

resource "httpx" do
  url "https://files.pythonhosted.org/packages/source/h/httpx/httpx-0.27.0.tar.gz"
  sha256 "a0cb88a46f32dc874e04ee956e4c2764aba2aa228f650b06788ba6bda2962ab5"
end

resource "questionary" do
  url "https://files.pythonhosted.org/packages/source/q/questionary/questionary-2.0.1.tar.gz"
  sha256 "bcce898bf3dbb446ff62830c86c5c6fb9a22a54146f0f5597d3da43b10d8fc8b"
end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"lic", "--help"
  end
end
