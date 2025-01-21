class Beschi < Formula
  include Language::Python::Virtualenv

  desc "Bit-packing and unpacking code generator for multiple target languages"
  homepage "https://github.com/sjml/beschi"
  url "https://github.com/sjml/beschi/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "ec7cd16fbbac8a88a375b9b232ae3705730c8b72e8bf06573d1c46cb804d1303"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
end
