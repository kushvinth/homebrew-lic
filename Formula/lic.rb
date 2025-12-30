class Lic < Formula
  desc "Minimal interactive license generator"
  homepage "https://github.com/kushvinth/lic"
  url "https://github.com/kushvinth/lic/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f38bc99981e42a9dc33d68dcfa5ff5ea09abca61e7864b780cd849bbd0ff404d"
  license "MIT"

  depends_on "python@3.12"
  depends_on "uv"

  def install
    python = Formula["python@3.12"].opt_bin/"python3.12"

    # Create venv WITHOUT pip (Homebrew style)
    system python, "-m", "venv", libexec

    # Install project using uv
    system Formula["uv"].opt_bin/"uv", "pip", "install",
           "--python", libexec/"bin/python",
           "--no-cache",
           buildpath

    # Expose CLI
    bin.install_symlink libexec/"bin/lic"
  end

  test do
    system bin/"lic", "--help"
  end
end
