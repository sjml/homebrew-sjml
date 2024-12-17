class Beschi < Formula
  include Language::Python::Virtualenv

  desc "Bit-packing and unpacking code generator for multiple target languages"
  homepage "https://github.com/sjml/beschi"
  url "https://github.com/sjml/beschi/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d269eba5b1d35dbb2cb43c6728e0b4429a1bbc7ee88d0cb9a90c9738c0fdf375"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
end
