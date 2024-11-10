class Beschi < Formula
  include Language::Python::Virtualenv

  desc "Bit-packing and unpacking code generator for multiple target languages"
  homepage "https://github.com/sjml/beschi"
  url "https://github.com/sjml/beschi/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "bef6035a66b2ab22196986c77b1a140c4ff769c158b1dfcb59abcc561c2d956e"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end
end
